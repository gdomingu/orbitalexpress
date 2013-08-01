class User < ActiveRecord::Base
  authenticates_with_sorcery!
  attr_accessible :username, :email, :password, :password_confirmation

  validates_length_of :password, :minimum => 3, :message => "password must be at least 3 characters long", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

  has_many :reservations

  def authorize do
    if self.is_admin?
      raise "Welcome!"
    else
      raise "You must be an administrator to view this page."
    end
  end

end
