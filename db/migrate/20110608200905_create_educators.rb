class CreateEducators < ActiveRecord::Migration
  def self.up
    create_table :educators do |t|
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :educators
  end
end

