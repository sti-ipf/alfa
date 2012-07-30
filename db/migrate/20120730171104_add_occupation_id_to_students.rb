class AddOccupationIdToStudents < ActiveRecord::Migration
  def self.up
    add_column :occupations, :occupation_id, :integer
  end

  def self.down
    remove_column :occupations, :occupation_id
  end
end
