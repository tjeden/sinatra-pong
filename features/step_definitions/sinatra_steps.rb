
Given /^I am the guest$/ do
end

When /^I go to the home page$/ do
  visit '/'
end

Then /^(?:|I )should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^\"]*)"?$/ do |link|
  click_link(link)
end

Then /^show me the page$/ do
  save_and_open_page
end