class CreateHuntingAmenities < ActiveRecord::Migration[5.0]
  def change
    create_table :hunting_amenities do |t|
      t.string :food
      t.string :lodging
      t.string :gear
      t.string :ammo
      t.string :guns
      t.string :vehicles

      t.timestamps
    end
  end
end
