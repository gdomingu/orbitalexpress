class CreateQuarters < ActiveRecord::Migration
  def change
    create_table :quarters do |t|
      t.string :room_type
      t.integer :room_number

      t.timestamps
    end
  end
end
