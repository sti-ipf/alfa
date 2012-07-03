class City < ActiveRecord::Base
  has_many :cores
  has_many :phases
  has_and_belongs_to_many :users
end
