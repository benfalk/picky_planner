Then(/^the test user should have a meal with "(.*?)" calories$/) do |calories|
  @meal = @user.reload.meals.find_by(calories: calories)
  expect(@meal).to_not be_nil
end

Then(/^the test user should have a meal with the food item "(.*?)"$/) do |_arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^click the "(.*?)" link$/) do |link|
  click_link(link)
end
