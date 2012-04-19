# -*- encoding : utf-8 -*-
class Period < ActiveRecord::Base
  belongs_to :room

  DAYS_OF_WEEK = [[I18n.t('period.monday'), 1], [I18n.t('period.tuesday'), 2],
    [I18n.t('period.wednesday'), 3], [I18n.t('period.thursday'), 4], [I18n.t('period.friday'), 5]]

  def day_of_week_to_s
    get_attribute_value(self.day_of_week, DAYS_OF_WEEK)
  end

private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end

end

