class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :site_id
      t.integer :current_password_id
      t.string :username

      t.timestamps null: false
    end

    add_index :accounts, :site_id
  end
end
