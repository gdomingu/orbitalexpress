FactoryGirl.define do
  factory :location do
    name "Alderaan"
    spaceport "King's Pass"
  end

  # factory :location, aliases: [:arrival_loc] do
  #   name "San Francisco"
  #   spaceport "SF Intergalactic"
  # end

  factory :weekday,  aliases: [:wday] do
    name "Sunday"
  end

  # factory :weekday do
  #   name "Wednesday"
  # end

  factory :launch_window,  aliases:[:leave, :arrive] do
    hour 13
  end

  # factory :launch_window do
  #   hour 6
  # end

  factory :user do
    username "gabedo"
    email "gabe@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :flight do
    name "su1300"
    leave
    arrive
    departure_loc
    arrival_loc
    wday
  end

end

