# frozen_string_literal: true

class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :quantity
      t.references :recipe, null: false, index: true, foreign_key: { to_table: :recipes }
      t.references :food, null: false, index: true, foreign_key: { to_table: :foods }

      t.timestamps
    end
  end
end
