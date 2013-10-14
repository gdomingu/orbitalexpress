Given(/^I am on the home page$/) do
  visit "/"
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content text
end

Then(/^I should be able to click "(.*?)"$/) do |text|
  browser = Watir::Browser.new
  browser.goto root_path
  browser.link(text: "Sign up").click
end

