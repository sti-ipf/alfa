class ProfessionalExp < ActiveRecord::Migration
  def self.up
    create_table :professional_exps do |t|
      t.string :area
      t.timestamps
    end
  end

  def self.down
    drop_table :professional_exps
  end
end
