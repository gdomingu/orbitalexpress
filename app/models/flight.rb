class Flight < ActiveRecord::Base
  has_and_belongs_to_many :weekdays

  attr_accessible :docking_at_id, :docking_hour_id, :launch_hour_id, :launching_from_id, :name, :weekday_id

  belongs_to :launch_hour, :class_name => "LaunchWindow"
  belongs_to :docking_hour, :class_name => "LaunchWindow"
end
