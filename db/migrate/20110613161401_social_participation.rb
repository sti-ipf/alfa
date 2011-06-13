class SocialParticipation < ActiveRecord::Migration
  def self.up
    create_table :social_participations do |t|
      t.boolean :union_movement
      t.string :union_movement_desc
      t.boolean :popular_social_movement
      t.boolean :ong
      t.string :ong_desc
      t.references :coordinator
      t.references :educator
      
      t.timestamps
    end
  end

  def self.down
    drop_table :social_participations
  end
end
