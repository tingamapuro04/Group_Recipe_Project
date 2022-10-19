# frozen_string_literal: true

class CreateInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_foods do |t|
      t.integer :Quantity
      t.references :inventory, null: false, index: true, foreign_key: { to_table: :inventories }
      t.references :food, null: false, index: true, foreign_key: { to_table: :foods }

      t.timestamps
    end
  end
end
