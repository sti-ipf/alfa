# -*- encoding : utf-8 -*-
class CoresPartnerResource < ActiveRecord::Base
  belongs_to :core
  belongs_to :partner_resource
end

