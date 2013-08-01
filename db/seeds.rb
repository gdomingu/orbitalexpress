Weekday.delete_all
Quarter.delete_all
Location.delete_all
Flight.delete_all
Spaceship.delete_all
User.delete_all

# USERS
@alex = User.create(
  :username => "alexlin",
  :email => "alex@alex.com",
  :password => "password",
  :password_confirmation => "password"
  )

# WEEKDAYS
weekdays = [
  "Monday",
  "Tuesday",
  "Wednesday",
  "Thursday",
  "Friday",
  "Saturday",
  "Sunday"
]

weekdays.each do |day|
  Weekday.create(
    :name => day
    )
end

hours_of_day = []
o_clock = Time.strptime("00:00", "%H:%M")
24.times do |x|
  hours_of_day << (o_clock + x.hours)
end

# QUARTERS
room_types = [
  "Colonist",
  "Family",
  "Couple",
  "Vulcan",
  "Cryogenic Chamber"
]
room_types.each do |type|
  10.times do |x|
    x = x + 1
    Quarter.create(
      :room_type => type,
      :room_number => x
      )
  end
end

# LOCATIONS
@alderaan = Location.create(
  :name => "Alderaan",
  :spaceport => "King's Pass"
  )
@io = Location.create(
  :name => "Io",
  :spaceport => "Galileo Jupiter"
  )
@endor = Location.create(
  :name => "Endor",
  :spaceport => "Ewok Way"
  )
@london = Location.create(
  :name => "London UK",
  :spaceport => "Heathrow Intergalactic"
  )
@sanfran = Location.create(
  :name => "San Francisco US",
  :spaceport => "SF Intergalactic"
  )
@tokyo = Location.create(
  :name => "Tokyo JP",
  :spaceport => "Tanegashima Space Center"
  )
@miranda = Location.create(
  :name => "Miranda",
  :spaceport => "Paax Spaceport"
  )
@exoplanet = Location.create(
  :name => "Exoplanet",
  :spaceport => "Hubble Portal"
  )
@santiago = Location.create(
  :name => "Santiago CL",
  :spaceport => "Comodoro Spaceport"
  )
@risa = Location.create(
  :name => "Risa",
  :spaceport => "Jamaharon"
  )

@hashrocket = Spaceship.create(
  :name => "USS Hashrocket"
  )

# FLIGHTS
Flight.create(
  :name => "OE-101",
  :launching_from_id => @tokyo.id,
  :docking_at_id => @endor.id,
  :launching_hour => hours_of_day[1],
  :docking_hour => hours_of_day[6],
  :spaceship_id => @hashrocket.id
  )








