class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :algorithm
      t.string :eval_value

      t.timestamps
    end
  end
end
