# -*- encoding : utf-8 -*-
class CreateEducators < ActiveRecord::Migration
  def self.up
    create_table :educators do |t|
      t.string :name
      t.string :class
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
      t.integer :education_level
      t.integer :familiar_income
      t.integer :house
      t.integer :house_type
      t.boolean :with_disability
      t.integer :political_affiliation      
      t.integer :political_party
      t.string :political_desc
      t.integer :religion
      t.integer :association
      t.string :association_desc
      t.integer :cooperative
      
      t.references :social_participation
      t.references :professional_exp
      t.references :education_exp
      t.references :phone
      t.references :core

      t.timestamps
    end
  end

  def self.down
    drop_table :educators
  end
end

