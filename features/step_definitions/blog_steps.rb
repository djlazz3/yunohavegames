Given(/^that a user is logged in$/) do
user_logged_in = 1
end

Given(/^I am in the index page$/) do
page = root/blog/index
end

When(/^I click on the "(.*?)" button$/) do |arg1|
arg1.change_page
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
form = Form.new(arg1, arg2)
end

When(/^I click on the button "(.*?)"$/) do |arg1|
arg1.submit
end

Then(/^I should see "(.*?)" and "(.*?)"$/) do |arg1, arg2|
arg1.show
arg2.show
end

Given(/^"(.*?)" blogs exist$/) do |arg1|
blogs != 0 
end

When(/^I visit the blogs page$/) do
page = root/blog/index
end

Then(/^I should see a list of the blogs$/) do
list(blogs)
end


