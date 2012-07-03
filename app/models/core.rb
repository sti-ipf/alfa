# -*- encoding : utf-8 -*-
class Core < ActiveRecord::Base

#relationships
  has_many :rooms
  has_many :educators
  has_many :coordinators
  has_many :phones
  has_and_belongs_to_many :desk_types
  has_many :partner_resources, :through => :cores_partner_resources
  has_many :cores_partner_resources
  has_many :seat_types, :through => :cores_seat_types
  has_many :cores_seat_types
  has_many :displacements, :through => :cores_displacements
  has_many :cores_displacements
  belongs_to :city
  has_many :periods

#validations

  validates :computer_observation, :kitchen_observation, :resources_observation, :place_description, :length => { :maximum => 100 }

#constants

  SIZES = [[I18n.t('core.size.until_20'), 0], [I18n.t('core.size.between_20_30'), 1], [I18n.t('core.size.up_30'), 2]]
  BOARD_TYPES =  [[I18n.t('core.board_type.blackboard'), 0], [I18n.t('core.board_type.whiteboard'), 1]]
  PLACES = [[I18n.t('core.place.association'), 0], [I18n.t('core.place.church_hall'), 1],
    [I18n.t('core.place.cooperative'), 2], [I18n.t('core.place.union'), 3],
    [I18n.t('core.place.cruch'), 4], [I18n.t('core.place.outdoor'), 5], [I18n.t('other'), 6]]
  COMMUNITY_TYPES = [[I18n.t('core.community_type.rural'), 1], [I18n.t('core.community_type.urban'), 2], ['Pesca Marinha (Mar)', 0], ['Pesca Ribeirinha (Rio)', 3], ['Outra', 4]]
  ILLUMINATION_TYPES = [[I18n.t('core.illumination_type.electric_power'), 0],
    [I18n.t('core.illumination_type.lamp'), 1], [I18n.t('core.illumination_type.other'), 2]]
  ILLUMINATION_CONDITIONS = [[I18n.t('core.illumination_condition.ok'), 0],
    [I18n.t('core.illumination_condition.nok'), 1]]
  TOTAL_SEATS = [[I18n.t('core.total_seats.until_10'), 0], [I18n.t('core.total_seats.between_10_20'), 1], ["Acima de 20", 2]]

#nested attributes

  accepts_nested_attributes_for :partner_resources, :reject_if => lambda { |a| a[:resource].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :seat_types , :reject_if => lambda { |a| a[:seat_type].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :periods, :reject_if => lambda { |a| a[:day_of_week].blank? }, :allow_destroy => true

  def size_to_s
    get_attribute_value(self.size, SIZES)
  end

  def board_type_to_s
    get_attribute_value(self.board_type, BOARD_TYPES)
  end

  def place_to_s
    get_attribute_value(self.place, PLACES)
  end

  def community_type_to_s
    get_attribute_value(self.community_type, COMMUNITY_TYPES)
  end

  def illumination_type_to_s
    get_attribute_value(self.illumination_type, ILLUMINATION_TYPES)
  end

  def illumination_condition_to_s
    get_attribute_value(self.illumination_condition, ILLUMINATION_CONDITIONS)
  end

  def total_seats_to_s
    get_attribute_value(self.total_seats, TOTAL_SEATS)
  end

private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end
end

