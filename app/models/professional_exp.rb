# -*- encoding : utf-8 -*-
class ProfessionalExp < ActiveRecord::Base
  has_and_belongs_to_many :coordinators
end

