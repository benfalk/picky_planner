require 'rails_helper'

RSpec.describe Meal, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:meal_items) }
  it { should have_many(:foods) }

  let(:meal) { FactoryGirl.create :meal }
  let(:food) { FactoryGirl.create :food }

  describe 'Food belonging to a meal' do
    before { meal.foods << food }
    subject { meal.reload.foods }

    its(:count) { is_expected.to eq(1) }
    it { is_expected.to include(food) }
  end
end
