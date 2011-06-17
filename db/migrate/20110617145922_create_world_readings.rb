class CreateWorldReadings < ActiveRecord::Migration
  def self.up
    create_table :world_readings do |t|
      t.string :email
      t.text :have_experience
      t.text :availability
      t.boolean :availability_to_travel
      t.text :need_for_literacy
      t.text :can_organize_rooms
      t.text :educator_wish
      t.text :any_time
      t.text :what_teach
      t.text :young_and_old_together
      t.text :list_subjects
      t.integer :computer_use
      t.integer :what_use
      t.integer :about_internet_use
      t.string :about_internet_use_desc
      t.integer :internet_connection_type
      t.integer :what_you_do_in_internet
      t.integer :frequency_email_reading
      t.boolean :make_searches
      t.string :prefered_search_engine
      t.integer :social_networking
      t.string :social_networking_desc
      t.integer :discussion_list
      t.string :discussion_list_desc
      t.integer :forum
      t.string :forum_desc
      t.boolean :chat
      t.boolean :msn
      t.boolean :use_msn_with_frequency
      t.boolean :has_blog
      t.boolean :share_photos_videos
      t.boolean :e_learning
      t.string :e_learning_desc
      t.references :educator
      t.references :coordinator

      t.timestamps
    end
  end

  def self.down
    drop_table :world_readings
  end
end
