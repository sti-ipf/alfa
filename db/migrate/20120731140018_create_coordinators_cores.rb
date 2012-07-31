class CreateCoordinatorsCores < ActiveRecord::Migration
  def self.up
    create_table :coordinators_cores, :id => false do |t|
      t.references :coordinator
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :coordinators_cores
  end
end
