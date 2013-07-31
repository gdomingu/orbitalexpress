FactoryGirl.define do
  factory :location do
    name "Alderaan"
    spaceport "King's Pass"
  end

  factory :user do
    username "gabedo"
    email "gabe@example.com"
    password "password"
    password_confirmation "password"

  end
end