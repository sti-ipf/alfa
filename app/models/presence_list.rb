class PresenceList < ActiveRecord::Base
  belongs_to :room
  belongs_to :student
end
