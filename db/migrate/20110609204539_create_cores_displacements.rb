class CreateCoresDisplacements < ActiveRecord::Migration
  def self.up
    create_table :cores_displacements, :id => false do |t|
      t.string :displacement_desc
      t.integer :displacement_type
      t.references :core
      t.references :displacement

      t.timestamps
    end
  end

  def self.down
    drop_table :cores_displacements
  end
end

