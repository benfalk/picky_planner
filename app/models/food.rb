class Food < ActiveRecord::Base
  has_many :meal_items
  has_many :meals, through: :meal_items

  scope :search, ->(term) { where('name like ?', "%#{term}%") }
end
