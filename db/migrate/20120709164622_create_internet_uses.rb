class CreateInternetUses < ActiveRecord::Migration
  def self.up
    create_table :internet_uses do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :internet_uses
  end
end
