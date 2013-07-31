require 'spec_helper'

describe "Location" do
  before do
    @launch_location = FactoryGirl.create(:location)
    @docking_location = FactoryGirl.create(:location)
  end


  it "can be saved to a flight" do
    @flight = Flight.create(:docking_at_id => @docking_location.id, :launching_from_id => @launch_location.id)
    expect(@flight.launching_from_id).to equal(@launch_location.id)
  end


end