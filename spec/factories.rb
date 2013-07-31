FactoryGirl.define do
  factory :launch_location do
    name "Alderaan"
    spaceport "King's Pass"
  end

  factory :docking_location do
    name "San Francisco"
    spaceport "SF Intergalactic Spaceport"
  end

  factory :user do
    username "gabedo"
    email "gabe@example.com"
    password "password"
    password_confirmation "password"
  end
end