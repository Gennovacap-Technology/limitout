class CreatePayoutPreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :payout_preferences do |t|
      t.boolean :bank_account

      t.timestamps
    end
  end
end
