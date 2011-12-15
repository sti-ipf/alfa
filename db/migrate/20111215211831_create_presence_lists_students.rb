class CreatePresenceListsStudents < ActiveRecord::Migration
  def self.up
    create_table :presence_lists_students, :id => false do |t|
      t.references :presence_list
      t.references :student

      t.timestamps
    end
  end

  def self.down
    drop_table :presence_lists_students
  end
end