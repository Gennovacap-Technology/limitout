class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :game_type
      t.string :quality
      t.string :abundance
      t.integer :number_animals

      t.timestamps
    end
  end
end
