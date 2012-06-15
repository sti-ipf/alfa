# -*- encoding : utf-8 -*-
class Phone < ActiveRecord::Base
  belongs_to :core
  belongs_to :coordinator
  belongs_to :educator
  belongs_to :student

  PHONE_TYPES = [[I18n.t('phone.house') , 0], [I18n.t('phone.mobile'), 1], [I18n.t('phone.to_note') , 2]]

  def phone_type_to_s
    get_attribute_value(self.phone_type, PHONE_TYPES)
  end
private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end
end

