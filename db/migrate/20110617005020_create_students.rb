class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
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
      t.string :address
      t.integer :civil_status
      t.integer :education_level
      t.integer :actual_condition
      t.string :profession
      t.string :actual_occupation
      t.integer :worker_situation
      t.integer :worker_situation_type
      t.integer :house
      t.string :house_desc
      t.integer :house_type
      t.boolean :special_need
      t.string :special_need_desc
      t.integer :religion
      t.string :religion_desc
      t.text :observations
      
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
