class AddStatusToPresences < ActiveRecord::Migration
  def self.up
    add_column :presences, :status, :integer
  end

  def self.down
    remove_column :presences, :status
  end
end
