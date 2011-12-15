# -*- encoding : utf-8 -*-
class Period < ActiveRecord::Base
  belongs_to :core

  DAYS_OF_WEEK = [[I18n.t('period.monday'), 1], [I18n.t('period.tuesday'), 2],
    [I18n.t('period.wednesday'), 3, [I18n.t('period.thursday'), 4], [I18n.t('period.friday'), 5]]

end

