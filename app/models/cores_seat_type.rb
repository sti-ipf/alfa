# -*- encoding : utf-8 -*-
class CoresSeatType < ActiveRecord::Base
  belongs_to :core
  belongs_to :seat_type

  def self.update_seat_type_desc(desc, core_id)
    c = CoresSeatType.first(:conditions => "core_id = #{core_id} AND seat_type_id = 1")
    if !c.nil?
      c.seat_type_desc = desc
      c.save
    end
  end

end

