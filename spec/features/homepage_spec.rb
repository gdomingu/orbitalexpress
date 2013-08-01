require 'spec_helper'

describe "Homepage", js: true do
  before do
    visit root_path
  end

  it "displays the sign up form via AJAX" do
    click_link "Sign up"

    expect(page).to have_css('form#new_user')
  end

  it "displays the log in form via AJAX" do
    click_link "Log in"

    expect(page).to have_css('form#new_user_session')
  end

   it "displays errors for log in" do
      click_link "Log in"

      fill_in "username", :with => "Will Robinson"
      click_button "Login"

      expect(page.find('#modal_window')).to have_css('img#robot')
    end

    it "renders form when there was an error in sign up" do
      click_link "Sign up"

      fill_in "user[password]", :with => "z"
      click_button "Sign me up Scotty"

      expect(page.find('#modal_window')).to have_css('form#new_user')
    end
end