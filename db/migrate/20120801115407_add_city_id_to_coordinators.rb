class AddCityIdToCoordinators < ActiveRecord::Migration
  def self.up
    add_column :coordinators, :city_id, :integer
  end

  def self.down
    remove_column :coordinators, :city_id
  end
end
