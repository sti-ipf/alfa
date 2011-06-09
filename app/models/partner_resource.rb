# -*- encoding : utf-8 -*-
class PartnerResource < ActiveRecord::Base
  has_many :cores, :through => :cores_partner_resources
  has_many :cores_partner_resources

  RESOURCES = [[I18n.t('partner_resource.infra_structure'), 0],
    [I18n.t('partner_resource.furnitures'), 1], [I18n.t('partner_resource.hr'), 2]]
end

