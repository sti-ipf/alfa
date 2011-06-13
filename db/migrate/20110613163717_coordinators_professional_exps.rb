class CoordinatorsProfessionalExps < ActiveRecord::Migration
  def self.up
    create_table :coordinators_professional_exps, :id => false do |t|
      t.references :coordinator
      t.references :professional_exp

      t.timestamps
    end

  end

  def self.down
    drop_table :coordinators_professional_exps
  end
end
