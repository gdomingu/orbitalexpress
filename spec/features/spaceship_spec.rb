require 'spec_helper'

describe "authenticates admin and results in error message" do
  before do
    @user = FactoryGirl.create(:user)
  end

  it "signs up" do
    visit '/'
    click_link "Sign up"
    fill_in "Username", :with => @user.username
    fill_in "Password", :with => @user.password
    fill_in "Password confirmation", :with => @user.password_confirmation
    click_button "Save"
    expect(page).to have_content "Thank you for registering"
  end

  # it "logs in" do
  #   visit '/login'
  #   fill_in "Username", :with => @user.username
  #   fill_in "Password", :with => @user.password
  #   click_button "Login"
  # end

  # it "shows error message" do
  #   visit '/spaceships'
  #   expect(page).to have_content "You must be an administrator to view this page."
  # end
end