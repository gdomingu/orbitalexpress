class FlightsWeekdaysTable < ActiveRecord::Migration
  def change
    create_table :flights_weekdays do |t|
      t.integer :flight_id
      t.integer :weekday_id
    end
  end
end
