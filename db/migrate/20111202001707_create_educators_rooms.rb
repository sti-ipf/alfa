class CreateEducatorsRooms < ActiveRecord::Migration
  def self.up
    create_table :educators_rooms, :id => false do |t|
      t.references :educator
      t.references :room

      t.timestamps
    end
  end

  def self.down
    drop_table :educators_rooms
  end
end
