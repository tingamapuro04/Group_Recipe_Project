class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :preparation_time
      t.text :cooking_time
      t.text :description
      t.integer :user_id

      t.timestamps
    end
    add_index :recipes, :user_id
  end
end
