class Recipe < ApplicationRecord
  belongs_to :user, foreign_key: :user_id,  class_name: 'User'
  has_many :recipe_foods, foreign_key: :recipe_id, dependent: :destroy
  has_many :foods, through: :recipe_foods
end