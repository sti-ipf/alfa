# -*- encoding : utf-8 -*-
class SocialParticipation < ActiveRecord::Base
  belongs_to :coordinator
  belongs_to :educator
  
  def save_with_descs(o_desc, u_desc)
    self.update_attributes(:ong_desc => o_desc, :union_movement_desc => u_desc)
  end
end

