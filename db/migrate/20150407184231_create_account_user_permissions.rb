class CreateAccountUserPermissions < ActiveRecord::Migration
  def change
    create_table :account_user_permissions do |t|
      t.integer :account_id
      t.integer :user_id
      t.integer :permissions

      t.timestamps null: false
    end
  end
end
