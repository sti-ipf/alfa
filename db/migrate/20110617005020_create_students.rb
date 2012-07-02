class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :nickname
      t.date :sign_up_date_on
      t.date :class_start_date_on
      t.string :name
      t.integer :age
      t.integer :gender
      t.date :dob
      t.integer :ethnicity
      t.string :hometown
      t.string :state
      t.integer :zone
      t.string :zone_desc
      t.string :address
      t.string :district
      t.string :number
      t.string :zip_code
      t.string :email
      t.integer :civil_status
      t.integer :education_level
      t.string :education_level_place
      t.integer :actual_condition
      t.string :profession
      t.string :actual_occupation
      t.integer :worker_situation
      t.integer :worker_situation_type
      t.integer :house
      t.string :house_desc
      t.integer :house_type
      t.string :house_type_desc
      t.boolean :special_need
      t.string :special_need_desc
      t.integer :religion
      t.string :religion_desc
      t.text :observations
      t.string :mother_name
      t.string :father_name
      t.integer :internet_access_local
      t.string :internet_access_local_desc
      t.string :rg
      t.string :dob_id
      t.string :cpf
      t.string :voter_id
      t.string :professional_id
      t.string :social_id
      t.integer :familiar_income
      
      t.references :educator
      t.references :core
      t.references :room
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
