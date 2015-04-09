class Meal < ActiveRecord::Base
  belongs_to :user, foreign_key: :consumed_by
  has_many :meal_items
  has_many :foods, through: :meal_items
end
