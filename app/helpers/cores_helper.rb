# -*- encoding : utf-8 -*-
module CoresHelper

  def get_day_of_week(number)
    case number
      when 0
        I18n.t 'period.monday'
      when 1
        I18n.t 'period.tuesday'
      when 2
        I18n.t 'period.wednesday'
      when 3
        I18n.t 'period.thursday'
      when 4
        I18n.t 'period.friday'
    end
  end

  def get_resource(number)
    case number
      when 0
        I18n.t 'partner_resource.infra_structure'
      when 1
        I18n.t 'partner_resource.furnitures'
      when 2
        I18n.t 'partner_resource.hr'
    end
  end

  def get_seat_type(number)
    case number
      when 0
        I18n.t('seat_type.seats')
      when 1
        I18n.t('seat_type.wooden_bench')
      when 2
        I18n.t('seat_type.elementar_seats')
      when 3
        I18n.t('seat_type.university_seats')
      when 4
        I18n.t('seat_type.other')
      when 5
        I18n.t('seat_type.without')
    end
  end

  def get_desk_type(number)
    case number
      when 0
        I18n.t('desk_type.elementar_desks')
      when 1
        I18n.t('desk_type.round_tables')
      when 2
        I18n.t('desk_type.plastic_tables')
      when 3
        I18n.t('desk_type.easel')
    end
  end

end

