class Core < ActiveRecord::Base
  has_many :educators
  has_many :coordinators
  has_many :phones
  has_many :partner_resources
  has_many :seat_types
  has_many :desk_types
  has_many :displacements
  has_many :periods

end

