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

  describe '#consumed_at=' do
    let(:string_time) { '01/01/2001 11:00 AM' }
    subject { meal.consumed_at = string_time }
    before { expect(Chronic).to receive(:parse).with(string_time) }
    it { is_expected.to eq(string_time) }
  end

  describe '#consumd_at_string' do
    context 'with a non-nil datetime' do
      let(:datetime) { Chronic.parse '01/01/2001 11:00 AM' }
      let(:meal) { FactoryGirl.create :meal, consumed_at: datetime }
      subject { meal.consumed_at_string }

      it { is_expected.to eq '01/01/2001 11:00 AM' }
    end
  end
end
