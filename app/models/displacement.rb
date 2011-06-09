# -*- encoding : utf-8 -*-
class Displacement < ActiveRecord::Base
  has_many :cores, :through => :cores_displacements
  has_many :cores_displacements
end

