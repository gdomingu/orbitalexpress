class Reservation < ActiveRecord::Base
  attr_accessible :date_of_flight, :flight_id, :quarter_id, :user_id

  belongs_to :flight
  belongs_to :quarter
  belongs_to :user
end
