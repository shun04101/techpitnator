
class ExtractionAlgorithm
  # gameは現在プレイ中のゲームを保持します。
  attr_reader :game
  # queryは絞り込みの条件を保持します。
  attr_reader :query

  def initialize(game)
    Rails.logger.debug('ExtractionAlgorithm initialized.')
    @game = game
    @query = Comic.all
  end

  def compute
    progresses = @game.progresses
    progresses.each do |progress|
      question = progress.question

      case question.algorithm
        when 'genre_match'
          genre_match(progress)
        when 'serialization_end'
          serialization_end?(progress)
        when 'publisher_match'
          publisher_match(progress)
        else
          raise Exception('Invalid algorithm. --> ' + question.algorithm.to_s)
      end

      Rails.logger.debug('On the way query is ' + @query.to_sql.to_s)
      Rails.logger.debug('On the way comics are ' + @query.pluck(:title).to_a.to_s)
    end
    @query
  end

  private

  def serialization_end?(progress)
    if progress.positive_answer?
      @query = @query.where.not("comics.serialization_end_year is null")
    end

    if progress.negative_answer?
      @query = @query.where("comics.serialization_end_year is null")
    end
  end


  def genre_match(progress)
    if progress.positive_answer?
      @query = @query.where("comics.genre like ?", "%#{progress.question.eval_value}%")
    end

    if progress.negative_answer?
      @query = @query.where.not("comics.genre like ?", "%#{progress.question.eval_value}%")
    end
  end


  def publisher_match(progress)
     if progress.positive_answer?
        @query = @query.where("comics.publisher like ?", "%#{progress.question.eval_value}%")
     end

     if progress.negative_answer?
        @query = @query.where.not("comics.publisher like ?", "%#{progress.question.eval_value}%")
     end
  end

end
