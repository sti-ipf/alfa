# -*- encoding : utf-8 -*-
class CreateEducators < ActiveRecord::Migration
  def self.up
    create_table :educators do |t|
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
#fase 2
      t.string :zone_desc
      t.string :core_identification
      t.integer :age_range
      t.string :district
      t.string :number
      t.string :zip_code
      t.string :internet_access_local
      t.string :internet_access_local_desc
      t.string :email
      t.integer :house_type
      t.string :house_type_desc
      t.string :special_need_desc
      t.integer :special_need_type
      t.text :participation_reason
      t.boolean :travel_disponibility
      t.text :last_books
      t.text :tv_programs
      t.text :experience
      t.text :other_job
      t.text :agree_with_any_period
      t.text :what_teach
      t.text :subjects
      t.boolean :has_pc
      t.integer :where_use_pc
      t.integer :about_pc_use
      t.integer :which_uses
      t.string :where_use_pc_desc

      t.boolean :has_internet
      t.integer :where_has_internet
      t.string :where_has_internet_desc

      t.integer :for_what_use_internet
      t.string :for_what_use_internet_desc
      t.integer :use_social_network
      t.integer :know_social_network
      t.string :know_social_network_desc
      t.integer :use_social_network
      t.integer :which_social_network
      t.string :use_social_network_desc
      t.text :observation
      

      t.timestamps
    end
  end

  def self.down
    drop_table :educators
  end
end

