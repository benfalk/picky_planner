class MealItem < ActiveRecord::Base
  belongs_to :meal
  belongs_to :food

  def food_name
    return '' if food.nil?
    food.name
  end
end
