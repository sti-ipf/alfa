class RemoveCoreIdAndAddRoomIdToPeriods < ActiveRecord::Migration
  def self.up
    remove_column :periods, :core_id
    add_column :periods, :room_id, :integer
  end

  def self.down
    remove_column :periods, :room_id
    add_column :periods, :core_id, :integer
  end
end
