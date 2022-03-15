class Progress < ApplicationRecord

  belongs_to :game
  belongs_to :question



  def assign_sequence
    next_sequence = 1
    if game.present?
      all_progress = game.progresses
      if all_progress.count > 0
        next_sequence = all_progress.maximum(:sequence) + 1
      end
    end
    self.sequence = next_sequence
  end

  # 質問に対して「はい」と回答したか
  def positive_answer?
    answer == 'positive'
  end
  
  # 質問に対して「いいえ」と回答したか
  def negative_answer?
    answer == 'negative'
  end

end
