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
  
#constants

  GENDERS = [["Masculino", 0], ["Feminino", 1]]
  ETHNICITIES = [["Branco", 0], ["Índio", 1], ["Afrodescendente", 2], ["Indefinido", 3], ["Outro", 4]]
  ZONES = [["Rural", 0], ["Urbana", 1], ["Pesqueira", 2]]
  CIVIL_STATUS = [["Casado", 0], ["Solteiro", 1], ["Viúvo", 2], ["Separado/Divorciado/Desquitado", 3], ["Outros", 4]] 
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

#nested attributes

  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :social_participations, :allow_destroy => true

  def total_seats_to_s
    get_attribute_value(self.total_seats, TOTAL_SEATS)
  end

  def gender_to_s
    get_attribute_value(self.gender, GENDERS)
  end

  def ethnicity_to_s
    get_attribute_value(self.ethnicity, ETHNICITIES)
  end

  def zone_to_s
  end

  def civil_status_to_s
  end

  def house_to_s
  end

  def house_type_to_s
  end

  def special_need_to_s
  end

  def political_affiliation_to_s
  end

  def religion_to_s
  end

  def association_to_s
  end

  def cooperative_to_s
  end

private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end
  
end

