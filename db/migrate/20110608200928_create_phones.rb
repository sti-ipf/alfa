# -*- encoding : utf-8 -*-
class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.integer :dd
      t.string :number
      t.integer :phone_type
      t.references :core
      t.references :coordinator
      t.references :educator

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end

