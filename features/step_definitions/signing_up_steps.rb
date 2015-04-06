Given(/^I do not have an account$/) do
  @user_count = User.count
end

When(/^I visit "(.*?)"$/) do |arg1|
  visit arg1
end

When(/^put "(.*?)" in the "(.*?)" field$/) do |arg1, arg2|
  fill_in arg2, with: arg1
end

When(/^put "(.*?)" in the "(.*?)" field within "(.*?)"$/) do |arg1, arg2, arg3|
  within(arg3) do
    fill_in arg2, with: arg1
  end
end

When(/^click the "(.*?)" button$/) do |arg1|
  click_button arg1
end

Then(/^I should should be signed up$/) do
  expect(User.count).to eq(@user_count + 1)
end

Given(/^a user with an email of "(.*?)" exists$/) do |arg1|
  FactoryGirl.create :user, email: arg1
end

Then(/^I should should not be signed up$/) do
  expect(User.count).to_not eq(@user_count + 1)
end
