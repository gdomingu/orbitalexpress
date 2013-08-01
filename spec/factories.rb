FactoryGirl.define do
  factory :location,  aliases: [:departure_loc, :arrival_loc] do
    name "Alderaan"
    spaceport "King's Pass"
  end

  factory :weekday,  aliases: [:wday] do
    name "Sunday"
  end

  # factory :weekday do
  #   name "Wednesday"
  # end

  factory :reservation do
    date_of_flight Time.now
  end

  factory :user do
    username "gabedo"
    email "gabe@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :quarter do
    room_type "Vulcan"
    room_number 3
  end

  factory :flight do
    name "su1300"
    docking_hour Time.now
    launching_hour Time.now
  end

end

