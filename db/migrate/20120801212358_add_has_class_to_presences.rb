class AddHasClassToPresences < ActiveRecord::Migration
  def self.up
    add_column :presences, :has_class, :boolean, :default => true
  end

  def self.down
    remove_column :presences, :has_class
  end
end
