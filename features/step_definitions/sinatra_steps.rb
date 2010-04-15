Given /^I am the guest$/ do
end

When /^I go to the home page$/ do
  visit '/'
end

Then /^(?:|I )should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end
