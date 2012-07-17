class CreateLectureDays < ActiveRecord::Migration
  def self.up
    create_table :lecture_days do |t|
      t.integer :lecture_on
      t.integer :week_day
      t.integer :day
      t.integer :month
      t.integer :year
      t.time :start_at
      t.time :end_at
      t.references :room

      t.timestamps
    end
  end

  def self.down
    drop_table :lecture_days
  end
end
