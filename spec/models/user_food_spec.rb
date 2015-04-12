require 'rails_helper'

RSpec.describe UserFood, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:food) }
end
