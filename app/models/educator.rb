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
end

