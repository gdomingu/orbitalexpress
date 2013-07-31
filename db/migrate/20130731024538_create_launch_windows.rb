class CreateLaunchWindows < ActiveRecord::Migration
  def change
    create_table :launch_windows do |t|
      t.time :hour

      t.timestamps
    end
  end
end
