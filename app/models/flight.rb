class Flight < ActiveRecord::Base
  attr_accessible :docking_at_id, :docking_hour, :launching_hour, :launching_from_id, :name, :spaceship_id, :launch_day_id, :dock_day_id

  has_many :seats, :through => :reservations
  has_many :reservations

  belongs_to :launch_day, :class_name => "Weekday"
  belongs_to :dock_day, :class_name => "Weekday"

  belongs_to :launch_location, :class_name => "Location", :foreign_key => "launching_from_id"
  belongs_to :docking_location, :class_name => "Location", :foreign_key => "docking_at_id"
  belongs_to :spaceship

  def self.find_launching_hour

  end

  def self.find_departure_location
  end

  def self.find_arrival_location
  end

end
