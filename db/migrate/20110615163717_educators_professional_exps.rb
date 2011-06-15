class EducatorsProfessionalExps < ActiveRecord::Migration
  def self.up
    create_table :educators_professional_exps, :id => false do |t|
      t.references :educator
      t.references :professional_exp

      t.timestamps
    end

  end

  def self.down
    drop_table :educators_professional_exps
  end
end
