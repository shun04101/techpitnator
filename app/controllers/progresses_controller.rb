class ProgressesController < ApplicationController


  def new
    @progress = Progress.new
    current_game = Game.find(params[:game_id])
    @question = Question.next_question(current_game)
  end

  def create
    current_game = Game.find(params[:game_id])
    # 回答した内容を保存する
    progress = current_game.progresses.new(create_params)
    progress.assign_sequence
    progress.save!
    # 絞り込みを実行
    @extract_comics = ExtractionAlgorithm.new(current_game).compute

    # 絞り込み結果が1件の場合、チャレンジ(正解を当てにいく)へ遷移
    if @extract_comics.count == 1
      redirect_to challenge_game_path(current_game)
      return
    end

    next_question = Question.next_question(current_game)
    if next_question.blank?
      current_game.status = 'finished'
      current_game.result = 'incorrect'
      current_game.save!
      redirect_to give_up_game_path(current_game)
      return
    end

    redirect_to new_game_progresses_path(current_game)
  end

  private

  def create_params
    params.require(:progress).permit(:question_id, :answer)
  end

end
