# -*- encoding : utf-8 -*-
class Coordinator < ActiveRecord::Base
  
#relationships
  belongs_to :core
  has_and_belongs_to_many :professional_exps
  has_and_belongs_to_many :rooms
  has_many :social_participations
  has_many :phones
  has_many :education_exps, :through => :coordinators_education_exps
  has_many :coordinators_education_exps

  validates_presence_of :core_id
  
#constants

  GENDERS = [["Masculino", 0], ["Feminino", 1]]
  ETHNICITIES = [["Branco", 0], ["Indígena", 1], ["Preta", 5], ["Parda", 6], ["Amarela", 7], ["Indefinido", 3], ["Outro", 4]]
  ZONES = [["Rural", 0], ["Urbana", 1], ["Pesca Marinha (Mar)", 2], ["Pesca Ribeirinha (Rio)", 3], ["Outra", 4]]
  CIVIL_STATUS = [["Casado(a)", 0], ["Solteiro(a)", 1], ["Viúvo(a)", 2], ["Separado(a)/Divorciado/(a)Desquitado(a)", 3], ["Outros", 4]] 
  SONS_NUMBER =  [[I18n.t('coordinator.sons_number.without'), 0], ["1", 1], ["2", 2], 
    ["3", 3], ["4", 4], [I18n.t("coordinator.sons_number.more_than_four"), 5]] 
  EDUCATION_LEVELS = [["Não frequentou", 7], ["Frequentou até 1 ano", 5], ["Frequentou mais que o 1 ano ", 6], 
    ["Ensino médio incompleto", 0], ["Ensino médio completo", 1], 
    ["Ensino superior incompleto", 2], ["Ensino superior completo", 3], ["Pós-graduação", 4]] 
  FAMILIAR_INCOME = [[I18n.t('coordinator.familiar_income.without'), 0], [I18n.t('coordinator.familiar_income.until_1'), 1], 
      [I18n.t('coordinator.familiar_income.1_to_2'), 2], [I18n.t('coordinator.familiar_income.2_to_2'), 3], 
      [I18n.t('coordinator.familiar_income.3_to_4'), 4], [I18n.t('coordinator.familiar_income.more_than_5'), 5]]
  HOUSES = [[I18n.t('coordinator.house.owner'), 0],[I18n.t('coordinator.house.rent'), 1],
    [I18n.t('coordinator.house.given'), 2],[I18n.t('coordinator.house.occupied'), 3], [I18n.t('coordinator.house.hostel'), 4],
    [I18n.t('other'), 5]]
  HOUSE_TYPES = [["Alvenaria", 0], ["Madeira", 1], ["Pau-a-pique", 2], ["Lona /papelão", 3], ["Palha", 4]] 
  POLITICAL_AFFILIATIONS = [[I18n.t('coordinator.political_affiliation.affliated'), 0], 
    [I18n.t('coordinator.political_affiliation.militant'), 1], [I18n.t('coordinator.political_affiliation.like'), 2],
    [I18n.t('coordinator.political_affiliation.no_work'), 3]]
  POLITICAL_PARTIES = [["PDT", 0], ["PCdoB", 1], ["PT", 2], ["DEM", 3], ["PL", 4], ["PMDB", 0], ["PCdoB", 1], ["PSDB", 2], ["PSOL", 3], 
    ["PV", 4], ["PSB", 4], ["PSTU", 0], ["PTB", 1], ["PPS", 2], ["PP", 3], ["PSC", 1], [I18n.t('other'), 2]] 
  RELIGIONS =   [[I18n.t('coordinator.religion.catholic'), 0], 
      [I18n.t('coordinator.religion.evangelical'), 1], [I18n.t('coordinator.religion.spiritualist'), 2],
      [I18n.t('coordinator.religion.afro_brazillian'), 3], 
      [I18n.t('coordinator.religion.jehovah'), 4], [I18n.t('coordinator.religion.preotestant'), 5],
      [I18n.t('coordinator.religion.pentecostal'), 6], ["Outra", 7]]
  ASSOCIATIONS = [[I18n.t('coordinator.association.community'), 0], 
      [I18n.t('coordinator.association.rural'), 1], [I18n.t('coordinator.association.neighborhood'), 2],
      [I18n.t('coordinator.association.artisans'), 3], [I18n.t('coordinator.association.other'), 4]]
  COOPERATIVES = [[I18n.t('coordinator.cooperative.work'), 0], 
      [I18n.t('coordinator.cooperative.production'), 1], [I18n.t('coordinator.cooperative.credit'), 2],
      [I18n.t('coordinator.cooperative.artisans'), 3]]


  COMPUTER_KNOWLEDGE = {
    I18n.t('coordinator.computer_knowledge_options.know_by_yourself') => 1,
    I18n.t('coordinator.computer_knowledge_options.dont_know_and_want_to') => 2,
    I18n.t('coordinator.computer_knowledge_options.know_with_others') => 3,
    I18n.t('coordinator.computer_knowledge_options.dont_know_and_dont_want_to') => 4
  }

  COMPUTER_USE = {
    I18n.t('coordinator.computer_use_options.write') => 1,
    I18n.t('coordinator.computer_use_options.multimidia') => 2,
    I18n.t('coordinator.computer_use_options.read') => 3,
    I18n.t('coordinator.computer_use_options.internet') => 4,
    I18n.t('coordinator.computer_use_options.spreadsheet') => 5,
    I18n.t('coordinator.computer_use_options.play') => 6,
    I18n.t('coordinator.computer_use_options.course') => 7,
    I18n.t('coordinator.computer_use_options.social') => 8
  }

  COMPUTER_TARGET = {
    I18n.t('coordinator.computer_target_options.free_time') => 1,
    I18n.t('coordinator.computer_target_options.study') => 2,
    I18n.t('coordinator.computer_target_options.work') => 3,
    I18n.t('coordinator.computer_target_options.know_and_never_use') => 4,
    I18n.t('coordinator.computer_target_options.not_know') => 5,
    I18n.t('coordinator.computer_target_options.know_and_not_like') => 6
  }

  INTERNET_OPTIONS = {
    I18n.t('coordinator.internet_options.dial_up') => 1,
    I18n.t('coordinator.internet_options.radio') => 2,
    I18n.t('coordinator.internet_options.broadband') => 3
  }

  EMAIL_FREQUENCY = {
    I18n.t('coordinator.email_frequency.once') => 1,
    I18n.t('coordinator.email_frequency.tree_times') => 2,
    I18n.t('coordinator.email_frequency.every_day') => 3,
    I18n.t('coordinator.email_frequency.almost_never') => 4,
    I18n.t('coordinator.email_frequency.not') => 5
  }

  SOCIAL_NETWORK = { 
    I18n.t('coordinator.social_network.options.orkut') => 1,
    I18n.t('coordinator.social_network.options.facebook') => 2,
    I18n.t('coordinator.social_network.options.twitter') => 3,
    I18n.t('coordinator.social_network.options.another') => 4
  }

#nested attributes

  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :social_participations, :allow_destroy => true

  def age
    return '' if self.dob.nil?
    value = Date.today.year - self.dob.year
    value -= 1 if (Date.today < self.dob + value.years)
    return value
  end

  def total_seats_to_s
    get_attribute_value(self.total_seats, TOTAL_SEATS)
  end

  def gender_to_s
    get_attribute_value(self.gender, GENDERS)
  end

  def ethnicity_to_s
    get_attribute_value(self.ethnicity, ETHNICITIES)
  end

  def political_party_to_s
    get_attribute_value(self.political_party, POLITICAL_PARTIES)
  end

  def zone_to_s
    get_attribute_value(self.zone, ZONES)
  end

  def civil_status_to_s
    get_attribute_value(self.civil_status, CIVIL_STATUS)
  end

  def house_to_s
    get_attribute_value(self.civil_status, HOUSES)
  end

  def house_type_to_s
    get_attribute_value(self.civil_status, HOUSE_TYPES)
  end

  def special_need_to_s
    if self.special_need
      "Sim"
    else
      "Não"
    end
  end

  def political_affiliation_to_s
    get_attribute_value(self.political_affiliation, POLITICAL_AFFILIATIONS)
  end

  def religion_to_s
    get_attribute_value(self.religion, RELIGIONS)
  end

  def association_to_s
    get_attribute_value(self.association, ASSOCIATIONS)
  end

  def cooperative_to_s
    get_attribute_value(self.cooperative, COOPERATIVES)
  end

  def education_level_to_s
    get_attribute_value(self.education_level, EDUCATION_LEVELS)
  end

private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end
  
end

