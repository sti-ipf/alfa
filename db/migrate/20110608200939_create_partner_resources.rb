# -*- encoding : utf-8 -*-
class CreatePartnerResources < ActiveRecord::Migration
  def self.up
    create_table :partner_resources do |t|
      t.string :resource

      t.timestamps
    end
  end

  def self.down
    drop_table :partner_resources
  end
end

