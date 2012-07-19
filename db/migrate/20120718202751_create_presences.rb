class CreatePresences < ActiveRecord::Migration
  def self.up
    create_table :presences do |t|
      t.references :lecture_day
      t.references :student
      t.references :room
      t.integer :month
      t.boolean :presence

      t.timestamps
    end
  end

  def self.down
    drop_table :presences
  end
end
