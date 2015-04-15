require 'rails_helper'

RSpec.describe FoodsController, type: :controller do
  describe '#search' do
    let(:food_item) { FactoryGirl.create :food, name: 'meat' }
    let(:search_results) { [food_item] }
    let(:user) { FactoryGirl.create :user, :test_user }
    before do
      sign_in :user, user
      expect(Food).to receive(:search)
        .with('me')
        .and_return(search_results)
      get :search, q: 'me', format: :json
    end
    subject { response }
    it { is_expected.to be_success }
  end
end
