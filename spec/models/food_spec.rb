require 'rails_helper'

RSpec.describe Food, type: :model do
  it { should have_many(:meal_items) }
  it { should have_many(:meals) }

  context 'With a food named "roflmeat"' do
    let!(:roflmeat) { FactoryGirl.create :food, name: 'roflmeat' }
    let!(:hamburger) { FactoryGirl.create :food, name: 'hamburger' }
    subject { Food.search('rofl') }
    it { is_expected.to include(roflmeat) }
    it { is_expected.to_not include(hamburger) }
  end
end
