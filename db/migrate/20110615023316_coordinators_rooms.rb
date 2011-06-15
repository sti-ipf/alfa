class CoordinatorsRooms < ActiveRecord::Migration
  def self.up
    create_table :coordinators_rooms, :id => false do |t|
      t.references :coordinator
      t.references :room

      t.timestamps
    end
  end

  def self.down
    drop_table :coordinators_rooms
  end
end
