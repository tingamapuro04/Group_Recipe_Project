class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :preparation_time
      t.string :cooking_time
      t.string :description
      t.references :user, null: false, index: true, foreign_key: { to_table: :users }

      t.timestamps
    add_index :recipes, :user_id
  end
end
