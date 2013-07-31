require 'spec_helper'

describe "Location" do
  before do
    @launch_location = FactoryGirl.create(:launch_location)
    @docking_location = FactoryGirl.create(:docking_location)
  end

##Gabe is going to do model test for location and flight
  it "can be saved to a flight" do
    @flight = Flight.create(:docking_at_id => @docking_location.id, :launch_from_id => @lauch_location.id)
    expect(@flight.locations).to include(@launch_location)
  end


end