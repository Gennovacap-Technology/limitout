class CreateExpeditions < ActiveRecord::Migration[5.0]
  def change
    create_table :expeditions do |t|
      t.string :title
      t.text :description
      t.string :number_of_guests
      t.integer :cost
      t.boolean :allow_multiple_bookings_on_date

      t.timestamps
    end
  end
end
