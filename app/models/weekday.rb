class Weekday < ActiveRecord::Base
  has_and_belongs_to_many :flights

  attr_accessible :name
end
