class CreateIndentifications < ActiveRecord::Migration[5.0]
  def change
    create_table :indentifications do |t|
      t.boolean :proven

      t.timestamps
    end
  end
end
