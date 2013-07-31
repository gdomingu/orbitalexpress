class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :name
      t.integer :launch_hour_id
      t.integer :docking_hour_id
      t.integer :launching_from_id
      t.integer :docking_at_id
      t.integer :weekday_id

      t.timestamps
    end
  end
end
