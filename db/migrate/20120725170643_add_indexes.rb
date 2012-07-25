class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :students, [:room_id, :core_id, :educator_id]
    add_index :coordinators, [:core_id]
    add_index :cores, [:city_id]
    add_index :educators, [:core_id]
    add_index :lecture_days, [:room_id]
    add_index :phones, [:student_id]
    add_index :phones, [:educator_id]
    add_index :phones, [:coordinator_id]
    add_index :phones, [:core_id]
    add_index :rooms, [:core_id]
  end

  def self.down
  end
end
