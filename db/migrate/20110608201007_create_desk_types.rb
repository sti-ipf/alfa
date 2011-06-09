class CreateDeskTypes < ActiveRecord::Migration
  def self.up
    create_table :desk_types do |t|
      t.integer :desk_type
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :desk_types
  end
end

