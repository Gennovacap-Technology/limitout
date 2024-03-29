class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :profile_photo
      t.string :profile_video
      t.text :profile_e_description

      t.timestamps
    end
  end
end
