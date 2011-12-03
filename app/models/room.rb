class Room < ActiveRecord::Base
  has_and_belongs_to_many :coordinators
  has_and_belongs_to_many :educators
end
