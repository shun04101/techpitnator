class Question < ApplicationRecord

  has_many :progresses

  def self.next_question(game)
    answered_question_ids = game.progresses.pluck(:question_id)
    Question.where.not(id: answered_question_ids).shuffle.take(1).first
  end

end
