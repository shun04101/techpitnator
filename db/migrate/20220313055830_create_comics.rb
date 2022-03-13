class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :title
      t.integer :serialization_started_year
      t.integer :serialization_end_year
      t.string :publisher
      t.string :genre

      t.timestamps
    end
  end
end
