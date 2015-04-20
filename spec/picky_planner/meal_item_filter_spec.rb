require 'rails_helper'

describe PickyPlanner::MealItemFilter do
  let(:user) { FactoryGirl.create :user, :test_user }
  let(:food) { FactoryGirl.create :food, name: 'junk' }
  let(:user_food) do
    FactoryGirl.create(:food, name: 'meat', calories: 100).tap do |f|
      user.foods << f
    end
  end
  let(:attributes) do
    {
      '11111' => { servings: '2', food_id: "#{food.id}" },
      '22222' => { servings: '3', food_id: "#{user_food.id}" }
    }
  end
  let(:instance) { described_class.new(food_scope: user.foods, attributes: attributes) }
  subject { instance.call }

  it { is_expected.to be_a Hash }
  its(:values) { is_expected.to include(servings: '3', food_id: "#{user_food.id}") }
  its(:values) { is_expected.to_not include(servings: '2', food_id: "#{food.id}") }
end
