class Seat < ActiveRecord::Base
  attr_accessible :row, :column
  has_many :reservations
  has_many :flights, :through => :reservations
end
