class Quarter < ActiveRecord::Base
  attr_accessible :room_type, :room_number
  has_many :reservations
  has_many :flights, :through => :reservations
end
