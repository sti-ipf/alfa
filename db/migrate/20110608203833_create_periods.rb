class CreatePeriods < ActiveRecord::Migration
  def self.up
    create_table :periods do |t|
      t.integer :day_of_week
      t.time :time

      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :periods
  end
end

