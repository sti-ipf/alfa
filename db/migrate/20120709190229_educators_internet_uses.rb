class EducatorsInternetUses < ActiveRecord::Migration
  def self.up
    create_table :educators_internet_uses, :id => false do |t|
      t.references :educator
      t.references :internet_use

      t.timestamps
    end

  end

  def self.down
    drop_table :educators_internet_uses
  end
end
