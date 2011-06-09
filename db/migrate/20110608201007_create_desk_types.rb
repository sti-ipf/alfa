# -*- encoding : utf-8 -*-
class CreateDeskTypes < ActiveRecord::Migration
  def self.up
    create_table :desk_types do |t|
      t.string :desk_type

      t.timestamps
    end
  end

  def self.down
    drop_table :desk_types
  end
end

