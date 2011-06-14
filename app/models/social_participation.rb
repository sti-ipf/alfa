# -*- encoding : utf-8 -*-
class SocialParticipation < ActiveRecord::Base
  belongs_to :coordinator
  
  def save_with_descs(ong_desc, union_movement_desc)
    self.update_attributes(:ong_desc => ong_desc, :union_movement_desc => union_movement_desc)
  end
end

