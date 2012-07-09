class EducatorsUseSocialNetWorks < ActiveRecord::Migration
  def self.up
    create_table :educators_use_social_net_works, :id => false do |t|
      t.references :educator
      t.references :use_social_net_work

      t.timestamps
    end

  end

  def self.down
    drop_table :educators_use_social_net_works
  end
end
