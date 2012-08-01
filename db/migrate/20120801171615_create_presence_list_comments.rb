class CreatePresenceListComments < ActiveRecord::Migration
  def self.up
    create_table :presence_list_comments do |t|
      t.references :student
      t.integer :month
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :presence_list_comments
  end
end
