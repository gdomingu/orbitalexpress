class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships do |t|
      t.string :name

      t.timestamps
    end
  end
end
