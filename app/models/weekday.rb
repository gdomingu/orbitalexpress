class Weekday < ActiveRecord::Base
  attr_accessible :name

  has_many :launched_flights, :class_name => "Flight", :foreign_key => 'launch_day_id'
  has_many :docked_flights, :class_name => "Flight", :foreign_key => 'dock_day_id'
end
