# frozen_string_literal: true

class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.string :Name
      t.references :user, foreign_key: { to_table: :users }, index: true, null: false

      t.timestamps
    end
  end
end
