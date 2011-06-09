class CreateCoresSeatTypes < ActiveRecord::Migration
  def self.up
    create_table :cores_seat_types, :id => false do |t|
      t.string :seat_type_desc
      t.references :core
      t.references :seat_type

      t.timestamps
    end
  end

  def self.down
    drop_table :cores_seat_types
  end
end

