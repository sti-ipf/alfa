class CreatePresenceLists < ActiveRecord::Migration
  def self.up
    create_table :presence_lists do |t|
      t.date :presence_at
      t.references :room

      t.timestamps
    end
  end

  def self.down
    drop_table :presence_lists
  end
end
