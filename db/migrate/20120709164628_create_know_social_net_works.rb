class CreateKnowSocialNetWorks < ActiveRecord::Migration
  def self.up
    create_table :know_social_net_works do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :know_social_net_works
  end
end
