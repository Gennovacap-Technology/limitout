class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :animal_type
      t.string :quality
      t.string :abundance
      t.integer :number_animals

      t.timestamps
    end
  end
end
