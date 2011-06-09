# -*- encoding : utf-8 -*-
class CreateDisplacements < ActiveRecord::Migration
  def self.up
    create_table :displacements do |t|
      t.references :core

      t.timestamps
    end

  end

  def self.down
    drop_table :displacements
  end
end

