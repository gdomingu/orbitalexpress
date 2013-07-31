Weekday.delete_all
LaunchWindow.delete_all

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