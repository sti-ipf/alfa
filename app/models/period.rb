# -*- encoding : utf-8 -*-
class Period < ActiveRecord::Base
  belongs_to :core

  DAYS_OF_WEEK = [[I18n.t('period.monday'), 0], [I18n.t('period.tuesday'), 1],
    [I18n.t('period.wednesday'), 2], [I18n.t('period.thursday'), 3], [I18n.t('period.friday'), 4]]

end

