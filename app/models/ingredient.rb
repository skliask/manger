class Ingredient < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_name, against: :name
  belongs_to :recipe
end

# == Schema Information
#
# Table name: ingredients
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer
#
