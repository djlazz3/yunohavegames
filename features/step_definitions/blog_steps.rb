Given(/^that a user is logged in$/) do
  user = FactoryGirl.create(:user)
  visit new_user_session_path
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Log in"
end

Given(/^I am in the index page$/) do
  visit root_path
end

When(/^I click on the "(.*?)" link$/) do |arg1|
  click_on arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
end

When(/^I click on the button "(.*?)"$/) do |arg1|
  click_button arg1
end

Then(/^I should see "(.*?)" and "(.*?)"$/) do |arg1, arg2|
  expect(page).to have_content arg1
  expect(page).to have_content arg2
end

Given(/^"(.*?)" blogs exist$/) do |arg1|
  pending
end

When(/^I visit the blogs page$/) do
  pending
end

Then(/^I should see a list of the blogs$/) do
  pending
end


