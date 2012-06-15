# -*- encoding : utf-8 -*-
class Educator < ActiveRecord::Base
  belongs_to :core
  has_and_belongs_to_many :professional_exps
  has_and_belongs_to_many :rooms
  has_many :social_participations
  has_many :phones
  has_many :education_exps, :through => :educators_education_exps
  has_many :educators_education_exps

  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :social_participations, :allow_destroy => true

  def age
    value = Date.today.year - self.dob.year
    value -= 1 if (Date.today < self.dob + value.years)
    return value
  end

  def total_seats_to_s
    get_attribute_value(self.total_seats, Coordinator::TOTAL_SEATS)
  end

  def gender_to_s
    get_attribute_value(self.gender, Coordinator::GENDERS)
  end

  def ethnicity_to_s
    get_attribute_value(self.ethnicity, Coordinator::ETHNICITIES)
  end

  def political_party_to_s
    get_attribute_value(self.political_party, Coordinator::POLITICAL_PARTIES)
  end

  def zone_to_s
    get_attribute_value(self.zone, Coordinator::ZONES)
  end

  def civil_status_to_s
    get_attribute_value(self.civil_status, Coordinator::CIVIL_STATUS)
  end

  def house_to_s
    get_attribute_value(self.civil_status, Coordinator::HOUSES)
  end

  def house_type_to_s
    get_attribute_value(self.civil_status, Coordinator::HOUSE_TYPES)
  end

  def special_need_to_s
    if self.special_need
      "Sim"
    else
      "Não"
    end
  end

  def political_affiliation_to_s
    get_attribute_value(self.political_affiliation, Coordinator::POLITICAL_AFFILIATIONS)
  end

  def religion_to_s
    get_attribute_value(self.religion, Coordinator::RELIGIONS)
  end

  def association_to_s
    get_attribute_value(self.association, Coordinator::ASSOCIATIONS)
  end

  def cooperative_to_s
    get_attribute_value(self.cooperative, Coordinator::COOPERATIVES)
  end

  def education_level_to_s
    get_attribute_value(self.education_level, Coordinator::EDUCATION_LEVELS)
  end
private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end
  
end

