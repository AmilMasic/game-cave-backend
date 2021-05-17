class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.datetime :release_date
      t.boolean :completed
      t.string :genre
      t.string :description
      t.string :platform
      t.integer :publisher_id

      t.timestamps
    end
  end
end
