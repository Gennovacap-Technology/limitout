class CreateHuntingProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :hunting_properties do |t|
      t.text :description
      t.string :address
      t.string :city
      t.string :state
      t.integer :acreage
      t.text :vegetation
      t.text :water_sources
      t.integer :number_blinds
      t.string :blind_types
      t.integer :feeders
      t.boolean :natural_feeders

      t.timestamps
    end
  end
end
