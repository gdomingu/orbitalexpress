class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation, :is_admin

  validates_uniqueness_of :username, :message => "that username is already registered", :if => :username
  validates_length_of :username, :minimum => 1, :message => "username cannot be blank", :if => :username
  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

  has_many :reservations

end
