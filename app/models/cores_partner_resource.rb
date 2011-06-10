# -*- encoding : utf-8 -*-
class CoresPartnerResource < ActiveRecord::Base
  belongs_to :core
  belongs_to :partner_resource

  def self.update_resource_desc(desc, core_id)
    c = first(:conditions => "core_id = #{core_id}")
    if !c.nil?
      c.resource_desc = desc
      c.save
    end
  end
end

