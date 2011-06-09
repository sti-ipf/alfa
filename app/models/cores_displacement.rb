# -*- encoding : utf-8 -*-
class CoresDisplacement < ActiveRecord::Base
  belongs_to :core
  belongs_to :displacement
end

