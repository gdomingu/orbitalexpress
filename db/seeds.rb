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

admin = User.create(
  :username => "admin",
  :password => "password",
  :password_confirmation => "password",
  :is_admin => true
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
@monday = Weekday.find_by_name("Monday")
@tuesday = Weekday.find_by_name("Tuesday")
@wednesday = Weekday.find_by_name("Wednesday")
@thursday = Weekday.find_by_name("Thursday")
@friday = Weekday.find_by_name("Friday")
@saturday = Weekday.find_by_name("Saturday")
@sunday = Weekday.find_by_name("Sunday")

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
@flight_1 = Flight.create(
  :name => "OE-101",
  :launching_from_id => @tokyo.id,
  :docking_at_id => @endor.id,
  :launching_hour => hours_of_day[1],
  :docking_hour => hours_of_day[6],
  :spaceship_id => @hashrocket.id,
  :launch_day_id => @monday.id,
  :dock_day_id => @tuesday.id
  )

@flight_2 = Flight.create(
  :name => "OE-102",
  :launching_from_id => @alderaan.id,
  :docking_at_id => @santiago.id,
  :launching_hour => hours_of_day[4],
  :docking_hour => hours_of_day[8],
  :spaceship_id => @hashrocket.id,
  :launch_day_id => @wednesday.id,
  :dock_day_id => @thursday.id
  )

@flight_2 = Flight.create(
  :name => "OE-103",
  :launching_from_id => @tokyo.id,
  :docking_at_id => @endor.id,
  :launching_hour => hours_of_day[9],
  :docking_hour => hours_of_day[11],
  :spaceship_id => @hashrocket.id,
  :launch_day_id => @friday.id,
  :dock_day_id => @saturday.id
  )

