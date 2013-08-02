class AddColumnsToQuarters < ActiveRecord::Migration
  def change
    add_column :quarters, :room_image, :string
    add_column :quarters, :room_description, :string
  end
end
