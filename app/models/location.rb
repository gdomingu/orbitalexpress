class Location < ActiveRecord::Base
  attr_accessible :name, :spaceport

  has_many :launched_flights, :class_name => "Flights", :foreign_key => 'launching_from_id'
  has_many :docked_flights, :class_name => "Flights", :foreign_key => 'docking_at_id'
end
