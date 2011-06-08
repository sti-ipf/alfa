class CreateCores < ActiveRecord::Migration
  def self.up
    create_table :cores do |t|

      t.string :city
      t.string :community
      t.string :address
      t.integer :community_type
      t.integer :local
      t.string :name
      t.string :responsible
      t.string :email
      t.string :main_activity
      t.integer :size
      t.boolean :blackboard
      t.integer :blackboard_type
      t.integer :total_seats
      t.integer :illumination_type
      t.string :illumination_type_desc
      t.integer :illumination_condition
      t.boolean :another_local
      t.string :another_local_desc
      t.boolean :bathroom
      t.boolean :kitchen
      t.text :coordenation_analysis

      t.timestamps
    end
  end

  def self.down
    drop_table :cores
  end
end

