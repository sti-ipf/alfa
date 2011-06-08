class CreateCoordinators < ActiveRecord::Migration
  def self.up
    create_table :coordinators do |t|
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :coordinators
  end
end

