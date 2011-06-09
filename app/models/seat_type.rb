# -*- encoding : utf-8 -*-
class SeatType < ActiveRecord::Base
  has_many :cores, :through => :cores_seat_types
  has_many :cores_seat_types

end

