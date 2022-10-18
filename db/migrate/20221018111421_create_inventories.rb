class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :Name
      t.integer :user_id

      t.timestamps
    end
    add_index :inventories, :user_id
  end
end
