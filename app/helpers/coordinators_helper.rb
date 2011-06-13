# -*- encoding : utf-8 -*-
module CoordinatorsHelper

  def get_phone_type(number)
    case number
      when 0
        I18n.t('phone.house') 
      when 1
        I18n.t('phone.mobile') 
      when 2
        I18n.t('phone.to_note') 
    end
  end
  
  def get_label_with_years(i)
    case i
      when 0
        I18n.t('education_exp.one_year')
      when 1
        I18n.t('education_exp.2_to_3')
      when 2
        I18n.t('education_exp.4_to_5')      
      when 3
        I18n.t('education_exp.more_than_5')
      when 4
        I18n.t('education_exp.without')
    end
  end

end

