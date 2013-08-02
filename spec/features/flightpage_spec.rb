require 'spec_helper'

# patsy will implement full text search on flights by origin spaceport, destination spaceport & flight time
describe "Flightpage" do
  before do
    visit root_path
  end

end

# describe "searching" do
#   select "Alderaan", :from => "launching_from_id"
#   select "Tokyo", :from => "docking_at_id"
#   select "August 23, 2013", :from => "datepicker"

#   click_button "Submit"

#   expect(page).to have_text("OE-110")
# end

# describe "searching for a flight by destination spaceport" do

# end

# describe "searching for a flight by flight time" do

# end
