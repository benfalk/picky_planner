require 'rails_helper'

RSpec.describe MealsController, type: :controller do
  let(:user) { FactoryGirl.create :user, :test_user }
  let(:food) { FactoryGirl.create :food }
  before do
    sign_in :user, user
  end

  describe '#create' do
  end
end
