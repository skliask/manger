class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :category
      t.string :author
      t.string :image_url
      t.string :cuisine
      t.integer :cook_time
      t.integer :prep_time
      t.text :ingredients_fuzzy
      t.float :rating

      t.timestamps
    end
  end
end
