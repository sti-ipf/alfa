class AddRoleAndEducatorIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :integer
    add_column :users, :educator_id, :integer
  end

  def self.down
    remove_column :users, :role
    remove_column :users, :educator_id
  end
end
