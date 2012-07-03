class Phase < ActiveRecord::Base
  belongs_to :city
  has_many :cores
end
