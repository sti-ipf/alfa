class EducatorsPcUses < ActiveRecord::Migration
  def self.up
    create_table :educators_pc_uses, :id => false do |t|
      t.references :educator
      t.references :pc_use

      t.timestamps
    end

  end

  def self.down
    drop_table :educators_pc_uses
  end
end
