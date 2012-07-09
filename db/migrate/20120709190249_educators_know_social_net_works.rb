class EducatorsKnowSocialNetWorks < ActiveRecord::Migration
  def self.up
    create_table :educators_know_social_net_works, :id => false do |t|
      t.references :educator
      t.references :know_social_net_work

      t.timestamps
    end

  end

  def self.down
    drop_table :educators_know_social_net_works
  end
end
