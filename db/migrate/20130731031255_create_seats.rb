class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :row
      t.string :seat

      t.timestamps
    end
  end
end
