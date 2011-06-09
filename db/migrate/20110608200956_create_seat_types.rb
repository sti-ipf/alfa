# -*- encoding : utf-8 -*-
class CreateSeatTypes < ActiveRecord::Migration
  def self.up
    create_table :seat_types do |t|
      t.integer :seat_type
      t.string :seat_type_desc
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :seat_types
  end
end

