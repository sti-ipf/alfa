class EducatorsEducationExp < ActiveRecord::Migration
  def self.up
    create_table :educators_education_exps do |t| 
      t.integer :years
      t.integer :popular_education_years
      t.references :educator
      t.references :education_exp
    end
  end

  def self.down
    drop_table :educators_education_exps
  end
end
