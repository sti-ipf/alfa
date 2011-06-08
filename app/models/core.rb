class Core < ActiveRecord::Base

#relationships
  has_many :educators
  has_many :coordinators
  has_many :phones
  has_many :partner_resources
  has_many :seat_types
  has_many :desk_types
  has_many :displacements
  has_many :periods

#constants

  SIZES = [[t('core.size.until_20'), 0], [t('core.size.between_20_30'), 0], [t('core.size.up_30'), 0]]

end

