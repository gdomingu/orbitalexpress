require 'spec_helper'

describe "Reservation" do
  before do
    @reservation = FactoryGirl.create(:reservation)
    @seat = FactoryGirl.create(:seat)
    @flight = FactoryGirl.create(:flight)
  end

  it "belongs to flight" do
    @fight.reservations << @reservation
    expect(@flight.reservations).to include(@reservation)
  end

  it "belongs to seat" do
    @seat.reservations << @reservation
    expect(@seat.reservations).to include(@reservation)
  end

end