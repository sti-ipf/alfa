# -*- encoding : utf-8 -*-
class CoresDisplacement < ActiveRecord::Base
  belongs_to :core
  belongs_to :displacement

  def self.create_displacements(array, core_id)
    return nil if array.nil?
    array.each do |i|
      id = i.split('.').first
      type = i.split('.').last
      create(:core_id => core_id, :displacement_id => id, :displacement_type => type)
    end
  end
end

