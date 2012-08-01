class AddOccupationIdToStudents < ActiveRecord::Migration
  def self.up
    add_column :students, :occupation_id, :integer
  end

  def self.down
    remove_column :students, :occupation_id
  end
end
