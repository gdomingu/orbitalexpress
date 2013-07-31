FactoryGirl.define do
  factory :location,  aliases: [:departure_loc, :arrival_loc] do
    name "Alderaan"
    spaceport "King's Pass"
  end

    # factory :location do
    #   name "San Francisco"
    #   spaceport "SF Intergalactic Spaceport"
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
    # association :launch_hour_id, factory: :launch_windows, hour: 6
    # association :docking_hour_id, factory: :launch_windows, hour: 6
    # association :launch_from_id, factory: :locations, name: "Alderaan"
    # association :docking_at_id, factory: :locations, name: "Alderaan"
    # association :weekday_id, factory: :locations, name: "Sunday"
  end

end

