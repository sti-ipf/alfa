class EducationExp < ActiveRecord::Migration
  def self.up
    create_table :education_exps do |t|
      t.string :education_type
      t.timestamps
    end
  end

  def self.down
    drop_table :education_exps
  end
end
