# -*- encoding : utf-8 -*-
class CreatePeriods < ActiveRecord::Migration
  def self.up
    create_table :periods do |t|
      t.integer :day_of_week
      t.time :start_time
      t.time :end_time

      t.references :core
      t.references :room

      t.timestamps
    end
  end

  def self.down
    drop_table :periods
  end
end

