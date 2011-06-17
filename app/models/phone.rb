# -*- encoding : utf-8 -*-
class Phone < ActiveRecord::Base
  belongs_to :core
  belongs_to :coordinator
  belongs_to :educator
  belongs_to :student
end

