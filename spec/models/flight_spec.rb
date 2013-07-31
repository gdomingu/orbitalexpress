require 'spec_helper'

describe "Flight" do
  before do
    @reservation = FactoryGirl.create(:reservation)
    @flight = FactoryGirl.create(:flight)
    @seat = FactoryGirl.create(:seat)
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




end