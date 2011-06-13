# -*- encoding : utf-8 -*-
class CoordinatorsEducationExp < ActiveRecord::Base
  belongs_to :coordinator
  belongs_to :education_exp

end

