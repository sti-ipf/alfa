# -*- encoding : utf-8 -*-
class CreateCoresDeskTypes < ActiveRecord::Migration
  def self.up
    create_table :cores_desk_types, :id => false do |t|

      t.references :core
      t.references :desk_type

      t.timestamps
    end
  end

  def self.down
    drop_table :cores_desk_types
  end
end

