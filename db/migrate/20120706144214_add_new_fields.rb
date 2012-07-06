class AddNewFields < ActiveRecord::Migration
  def self.up
    add_column :educators, :identification_on, :date
    add_column :educators, :profession, :string
    add_column :students, :identification_on, :date
  end

  def self.down
    remove_column :educators, :identification_on
    remove_column :educators, :profession
    remove_column :students, :identification_onate
  end
end