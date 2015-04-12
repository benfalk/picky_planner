Given(/^the test user exists$/) do
  @user = FactoryGirl.create :user, :test_user
end

Given(/^I am logged in as test user$/) do
  visit '/'
  within '#sign-in-form' do
    fill_in 'user[email]', with: 'test@test.com'
    fill_in 'user[password]', with: 'password'
    click_button 'Log in'
  end
end

Then(/^the test user should have a food named "(.*?)"$/) do |arg1|
  @food = @user.reload.foods.find_by(name: arg1)
  expect(@food).to_not be_nil
end
