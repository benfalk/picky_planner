class Meal < ActiveRecord::Base
  belongs_to :user, foreign_key: :consumed_by
end
