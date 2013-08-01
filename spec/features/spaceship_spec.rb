require 'spec_helper'

describe "authenticates admin" do
  it "results in an error message" do
    visit '/spaceships'
    expect(page).to have_content "You must be an administrator to view this page."
  end
end