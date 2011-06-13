# -*- encoding : utf-8 -*-
class EducationExp < ActiveRecord::Base
  has_many :coordinators, :through => :coordinators_education_exps
  has_many :coordinators_education_exps

end

