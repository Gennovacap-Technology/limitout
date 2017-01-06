class CreatePaymentMethods < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_methods do |t|
      t.boolean :credit_card

      t.timestamps
    end
  end
end
