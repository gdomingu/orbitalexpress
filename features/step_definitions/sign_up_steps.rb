Given(/^I have clicked on the sign up link$/) do
  browser = Watir::Browser.new
  browser.goto root_path
  browser.link(text: "Sign up").click
end


Then(/^I should be able to fill out a form$/) do
  pending # express the regexp above with the code you wish you had
end


