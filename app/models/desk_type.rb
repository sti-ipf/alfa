# -*- encoding : utf-8 -*-
class DeskType < ActiveRecord::Base
  has_and_belongs_to_many :cores
end

