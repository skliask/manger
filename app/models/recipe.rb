class Recipe < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_ingredients, against: :ingredients_fuzzy
  has_many :ingredients
end

# == Schema Information
#
# Table name: recipes
#
#  id                :bigint           not null, primary key
#  author            :string
#  category          :string
#  cook_time         :integer
#  cuisine           :string
#  image_url         :string
#  ingredients_fuzzy :text
#  prep_time         :integer
#  rating            :float
#  title             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
