require 'spec_helper'

describe "Flight" do
  before do
    @reservation = FactoryGirl.create(:reservation)
    @flight = FactoryGirl.create(:flight)
    @seat = FactoryGirl.create(:seat)
    @docking_hour = FactoryGirl.create(:launch_window)
    @launch_hour = FactoryGirl.create(:launch_window)
    @weekday = FactoryGirl.create(:weekday)
  end
##Gabe is going to do a spec test for flight and location relationship

  it "has many reservations" do
    @fight.reservations << @reservation
    expect(@flight.reservations).to include(@reservation)
  end

  it "has many seats" do
    @seat.reservations << @reservation
    expect(@seat.reservations).to include(@reservation)
  end
##Alex is going to do launch window and weekday

  # it "has a docking hour" do
  #   @flight.docking_hour_id = @docking_hour.id
  #   expect(@flight.docking_hour_id).to eq(@docking_hour.id)
  # end

  # it "has a launching hour" do
  #   @flight.launch_hour_id = @launch_hour.id
  #   expect(@flight.launch_hour_id).to eq(@launch_hour.id)
  # end

  # it "has a weekday" do
  #   @flight.weekday << @weekday
  #   expect(@flight.weekday).to eq(@weekday)
  # end


end