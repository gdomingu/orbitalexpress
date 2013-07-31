require 'spec_helper'

describe "Homepage" do
  before do
    visit root_path
  end

  it "displays the sign up form via AJAX" do
    click_link "Sign up"

    expect(page).to have_css('form#new_venue')
  end

  it "displays the log in form via AJAX" do
    click_link "Log in"

    expect(page).to have_css('#signup_window')
  end
end