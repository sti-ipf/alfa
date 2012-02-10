class CreateCitiesUsers < ActiveRecord::Migration
  def self.up
    create_table :cities_users, :id => false do |t|
      t.references :city
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :cities_users
  end
end
