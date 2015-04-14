Then(/^the test user should have a meal with "(.*?)" calories$/) do |calories|
  @meal = @user.reload.meals.find_by(calories: calories)
  expect(@meal).to_not be_nil
end
