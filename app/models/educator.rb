# -*- encoding : utf-8 -*-
class Educator < ActiveRecord::Base
  belongs_to :core
  has_and_belongs_to_many :professional_exps
  has_and_belongs_to_many :rooms
  has_many :social_participations
  has_many :phones
  has_many :education_exps, :through => :educators_education_exps
  has_many :educators_education_exps
end

