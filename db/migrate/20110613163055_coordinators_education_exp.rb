class CoordinatorsEducationExp < ActiveRecord::Migration
  def self.up
    create_table :coordinators_education_exps do |t| 
      t.integer :years
      t.integer :popular_education_years
      t.references :coordinator
      t.references :education_exp
    end
  end

  def self.down
    drop_table :coordinators_education_exps
  end
end
