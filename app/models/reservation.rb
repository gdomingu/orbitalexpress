class Reservation < ActiveRecord::Base
  attr_accessible :date_of_flight, :flight_id, :seat_id, :user_id

  belongs_to :flight
  belongs_to :seat
end
