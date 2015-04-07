FactoryGirl.define do
  factory :meal do
    consumed_at { 5.minutes.ago }
    consumed_by 1
    calories 1
  end
end
