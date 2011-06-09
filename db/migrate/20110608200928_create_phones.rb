class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones do |t|
      t.integer :dd
      t.string :number
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :phones
  end
end

