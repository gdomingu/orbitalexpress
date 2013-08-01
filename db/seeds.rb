Weekday.delete_all
LaunchWindow.delete_all
Seat.delete_all

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

time = Time.strptime("00:00", "%H:%M")
24.times do |x|
  LaunchWindow.create(
  :hour => time + x.hours
  )
end

rows = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G"
]
rows.each do |row|
  6.times do |x|
    x = x + 1
    Seat.create(
      :row => row,
      :column => x
      )
  end
end


Location.create(:name => "Alderaan", :spaceport => "King's Pass")
Location.create(:name => "Io", :spaceport => "Galileo Jupiter")
Location.create(:name => "Endor", :spaceport => "Ewok Way")
Location.create(:name => "London UK", :spaceport => "Heathrow Intergalactic")
Location.create(:name => "San Francisco US", :spaceport => "SF Intergalactic")
Location.create(:name => "Tokyo JP", :spaceport => "Tanegashima Space Center")
Location.create(:name => "Miranda", :spaceport => "Paax Spaceport")
Location.create(:name => "Exoplanet", :spaceport => "Hubble Portal")
Location.create(:name => "Santiago CL", :spaceport => "Comodoro Spaceport")
Location.create(:name => "Risa", :spaceport => "Jamaharon")