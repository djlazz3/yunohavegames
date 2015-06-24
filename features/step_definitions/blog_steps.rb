Given(/^that a user is logged in$/) do
  user = FactoryGirl.create(:user)
  visit new_user_session_path
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Log in"
  save_and_open_page
end

Given(/^I am in the index page$/) do
  visit root_path
end

When(/^I click on the "(.*?)" button$/) do |arg1|
  pending
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  pending
end

When(/^I click on the button "(.*?)"$/) do |arg1|
  pending
end

Then(/^I should see "(.*?)" and "(.*?)"$/) do |arg1, arg2|
  pending
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


