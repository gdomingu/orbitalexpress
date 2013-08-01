class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :quarter_id
      t.integer :user_id
      t.integer :flight_id
      t.datetime :date_of_flight

      t.timestamps
    end
  end
end
