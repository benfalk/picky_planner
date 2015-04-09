require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should have_many(:meal_items) }
  it { should have_many(:meals) }
end
