class AddCoreIdToRooms < ActiveRecord::Migration
  def self.up
    add_column :rooms, :core_id, :integer
  end

  def self.down
    remove_column :rooms, :core_id
  end
end
