class AddNameAndRenameNameToInstitutionName < ActiveRecord::Migration
  def self.up
    rename_column :cores, :name, :institution_name
    add_column :cores, :name, :string
  end

  def self.down
    remove_column :cores, :name, :string
    rename_column :cores, :institution_name, :name
  end
end
