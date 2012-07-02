class AddEmailToCoordinator < ActiveRecord::Migration
  def self.up
  	add_column :coordinators, :email, :string
  end

  def self.down
  	remove_column :coordinators, :email
  end
end
