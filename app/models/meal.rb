class Meal < ActiveRecord::Base
  belongs_to :user, foreign_key: :consumed_by
  has_many :meal_items
  has_many :foods, through: :meal_items
  accepts_nested_attributes_for :meal_items, allow_destroy: true

  def consumed_at=(time)
    if time.is_a? String
      super(Chronic.parse(time))
    else
      super
    end
  end

  def consumed_at_string
    return consumed_at.strftime('%m/%d/%Y %I:%M %p') if consumed_at.present?
    ''
  end
end
