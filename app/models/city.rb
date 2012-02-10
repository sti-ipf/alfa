class City < ActiveRecord::Base
  has_many :cores
  has_and_belongs_to_many :users
end
