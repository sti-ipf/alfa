# -*- encoding : utf-8 -*-
class CreateCores < ActiveRecord::Migration
  def self.up
    create_table :cores do |t|

      t.string :community
      t.string :address
      t.integer :community_type
      t.integer :place
      t.string :place_desc
      t.string :name
      t.string :responsible
      t.string :email
      t.string :main_activity
      t.integer :size
      t.boolean :board
      t.integer :board_type
      t.integer :total_seats
      t.integer :illumination_type
      t.string :illumination_type_desc
      t.integer :illumination_condition
      t.boolean :another_place
      t.string :another_place_desc
      t.boolean :has_restroom
      t.boolean :kitchen
      t.text :coordenation_analysis
      t.date :visit_on
      t.string :who_visited
      t.references :city
      t.references :phase

      
      t.string :community_type_desc
      t.text :place_description
      t.string :number
      t.string :zip_code
      t.text :computer_observation
      t.text :kitchen_observation
      t.text :resources_observation
      t.boolean :has_computers
      t.boolean :has_kitchen
      t.integer :total_restroom
      t.integer :total_computers

      t.timestamps
    end
  end

  def self.down
    drop_table :cores
  end
end
