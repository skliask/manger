# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'json'

jsonfile = File.open "#{Rails.root}/recipes-english.json"
jsondata = JSON.load jsonfile

jsondata.each do |r|
  recipe = Recipe.where(title: r[:title]).first_or_create do |recipe|
    recipe.title = r["title"]
    recipe.cook_time = r["cook_time"]
    recipe.prep_time = r["prep_time"]
    recipe.rating = r["ratings"]
    recipe.cuisine = r["cuisine"]
    recipe.category = r["category"]
    recipe.author = r["author"]
    recipe.image_url = r["image_url"]
    recipe.ingredients_fuzzy = r["ingredients"].join(",")
  end

  r["ingredients"].each do |i|
    recipe.ingredients.where(name: i).first_or_create
  end
end
