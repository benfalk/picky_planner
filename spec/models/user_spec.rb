require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:meals) }
  it { should have_many(:user_foods) }
  it { should have_many(:foods).through(:user_foods) }
end
