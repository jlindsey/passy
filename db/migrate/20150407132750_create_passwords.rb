class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.integer :account_id
      t.text :payload

      t.timestamps null: false
    end

    add_index :passwords, :account_id
  end
end
