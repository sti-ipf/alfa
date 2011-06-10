class CreateCoresPartnerResources < ActiveRecord::Migration
  def self.up
    create_table :cores_partner_resources do |t|
      t.string :resource_desc
      t.references :core
      t.references :partner_resource

      t.timestamps
    end
  end

  def self.down
    drop_table :cores_partner_resources
  end
end

