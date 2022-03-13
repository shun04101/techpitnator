class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.integer :game_id
      t.integer :sequence
      t.integer :question_id
      t.string :answer

      t.timestamps
    end
  end
end
