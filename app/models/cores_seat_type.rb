# -*- encoding : utf-8 -*-
class CoresSeatType < ActiveRecord::Base
  belongs_to :core
  belongs_to :seat_type
end

