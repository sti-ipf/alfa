class CreatePresenceLists < ActiveRecord::Migration
  def self.up
    create_table :presence_lists do |t|
      t.integer :month
      t.references :room
      t.references :student
      t.string :presences
      t.float :presence

      t.timestamps
    end
  end

  def self.down
    drop_table :presence_lists
  end
end
