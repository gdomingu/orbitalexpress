require 'spec_helper'

describe "Reservation" do
  before do
    @reservation = FactoryGirl.create(:reservation)
    @quarter = FactoryGirl.create(:quarter)
    @flight = FactoryGirl.create(:flight)
  end

  it "belongs to flight" do
    @flight.reservations << @reservation
    expect(@flight.reservations).to include(@reservation)
  end

  it "belongs to seat" do
    @quarter.reservations << @reservation
    expect(@quarter.reservations).to include(@reservation)
  end

end