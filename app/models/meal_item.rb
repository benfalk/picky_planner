class MealItem < ActiveRecord::Base
  belongs_to :meal
  belongs_to :food
end
