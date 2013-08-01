require 'spec_helper'

describe "Flight" do
  before do
    @reservation = FactoryGirl.create(:reservation)
    @flight = FactoryGirl.create(:flight)
    @quarter = FactoryGirl.create(:quarter)
    @weekday = FactoryGirl.create(:weekday)
  end
##Gabe is going to do a spec test for flight and location relationship

  it "has many reservations" do
    @flight.reservations << @reservation
    expect(@flight.reservations).to include(@reservation)
  end

  it "has many seats" do
    @quarter.reservations << @reservation
    expect(@quarter.reservations).to include(@reservation)
  end

  it "has a weekday" do
    @flight.weekdays << @weekday
    expect(@flight.weekdays[0]).to eq(@weekday)
  end


end