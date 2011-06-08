class CreatePartnerResources < ActiveRecord::Migration
  def self.up
    create_table :partner_resources do |t|
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :partner_resources
  end
end

