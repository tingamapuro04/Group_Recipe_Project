class CreateInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_foods do |t|
      t.integer :Quantity
      t.integer :inventory_id
      t.integer :food_id

      t.timestamps
    end
    add_index :inventory_foods, :inventory_id
    add_index :inventory_foods, :food_id
  end
end
