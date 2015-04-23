Then(/^the test user should have a meal with "(.*?)" calories$/) do |calories|
  @meal = @user.reload.meals.find_by(calories: calories)
  expect(@meal).to_not be_nil
end

Then(/^the test user should have a meal with the food item "(.*?)"$/) do |food_name|
  meals = @user.meals.joins(:foods).where(foods: { name: food_name })
  expect(meals.count).to be > 0
end

When(/^click the "(.*?)" link$/) do |link|
  click_link(link)
end

When(/^put "(.*?)" in the "(.*?)" select2 field/) do |value, from_field|
  matcher = from_field
            .gsub(/[\[\]]/, '_')
            .gsub(/_{2,}/, '_')
            .gsub(/^_|_$/, '')
  matcher = "s2id_#{matcher}"
  matcher =
    if matcher =~ /\*/
      "div[id^='#{matcher.split('*')[0]}'][id$='#{matcher.split('*')[1]}']"
    else
      "div[id='#{matcher}']"
    end
  first(matcher).click
  find('.select2-input').set(value)
  within '.select2-result' do
    find('span', text: value).click
  end
end
