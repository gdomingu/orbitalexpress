class Flight < ActiveRecord::Base
  attr_accessible :docking_at_id, :docking_hour_id, :launch_hour_id, :launching_from_id, :name, :weekday_id
  has_many :seats, :through => :reservations
  has_many :reservations
end
