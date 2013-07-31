class Flight < ActiveRecord::Base
  has_and_belongs_to_many :weekdays

  attr_accessible :docking_at_id, :docking_hour_id, :launch_hour_id, :launching_from_id, :name, :weekday_id

  has_many :seats, :through => :reservations
  has_many :reservations

  belongs_to :launch_hour, :class_name => "LaunchWindow"
  belongs_to :docking_hour, :class_name => "LaunchWindow"
  belongs_to :launch_location, :class_name => "Location", :foreign_key => "launching_from_id"
  belongs_to :docking_location, :class_name => "Location", :foreign_key => "docking_at_id"

  def self.find_launch_hour

  end

  def self.find_departure_location
  end

  def self.find_arrival_location
  end



  def self.text_search(query)
    if query.present?
      where("launching_from_id @@ :q or  docking_at_id @@ :q or launch_hour @@ :q", q: "query")
    else
      scoped
    end
  end

end
