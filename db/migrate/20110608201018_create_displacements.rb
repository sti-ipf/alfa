# -*- encoding : utf-8 -*-
class CreateDisplacements < ActiveRecord::Migration
  def self.up
    create_table :displacements do |t|
      t.string :displacement

      t.timestamps
    end

  end

  def self.down
    drop_table :displacements
  end
end

