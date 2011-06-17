# -*- encoding : utf-8 -*-
class CreateCoordinators < ActiveRecord::Migration
  def self.up
    create_table :coordinators do |t|
      t.string :name
      t.date :start_date_to_students
      t.integer :age
      t.integer :gender
      t.date :dob
      t.integer :ethnicity
      t.string :hometown
      t.string :state
      t.integer :zone
      t.string :address
      t.integer :civil_status
      t.string :rg
      t.string :cpf
      t.string :voter_id
      t.string :professional_id
      t.string :professional_serie
      t.string :birth_or_marriage_certificate_id
      t.string :social_id
      t.integer :sons_number
      t.integer :first_son_age
      t.integer :second_son_age
      t.integer :third_son_age
      t.integer :forth_son_age
      t.integer :education_level
      t.string :education_level_desc
      t.integer :familiar_income
      t.integer :house
      t.string :house_desc
      t.integer :house_type
      t.boolean :special_need
      t.integer :political_affiliation      
      t.integer :political_party
      t.string :political_desc
      t.integer :religion
      t.string :religion_desc
      t.integer :association
      t.string :association_desc
      t.integer :cooperative
      
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :coordinators
  end
end

