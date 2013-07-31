class LaunchWindow < ActiveRecord::Base
  attr_accessible :hour

  has_many :launches, :class_name => "Flight"
  has_many :dockings, :class_name => "Flight"
end
