class CreatePcUses < ActiveRecord::Migration
  def self.up
    create_table :pc_uses do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :pc_uses
  end
end
