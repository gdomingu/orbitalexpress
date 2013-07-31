class Seat < ActiveRecord::Base
  attr_accessible :row, :seat
  has_many :reservations
  has_many :flights, :through => :reservations
end
