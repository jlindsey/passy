class CreateTagLinks < ActiveRecord::Migration
  def change
    create_table :tag_links do |t|
      t.integer :taggable_id
      t.string :taggable_type
      t.integer :tag_id

      t.timestamps null: false
    end

    add_index :tag_links, [:taggable_type, :taggable_id]
    add_index :tag_links, :tag_id
  end
end
