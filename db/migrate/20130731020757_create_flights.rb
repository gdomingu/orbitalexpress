class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :name
      t.time :launching_hour
      t.time :docking_hour
      t.integer :launching_from_id
      t.integer :docking_at_id
      t.integer :spaceship_id
      t.integer :launch_day_id
      t.integer :dock_day_id

      t.timestamps
    end
  end
end
