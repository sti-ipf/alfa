class PartnerResource < ActiveRecord::Base
  belongs_to :core

  RESOURCES = [[I18n.t('partner_resource.infra_structure'), 0],
    [I18n.t('partner_resource.furnitures'), 1], [I18n.t('partner_resource.hr'), 2]]
end

