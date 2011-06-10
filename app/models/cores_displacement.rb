# -*- encoding : utf-8 -*-
class CoresDisplacement < ActiveRecord::Base
  belongs_to :core
  belongs_to :displacement

  def self.create_displacements(array, core_id, displacement_desc_0, displacement_desc_1)
    return nil if array.nil?
    array.each do |i|
      id = i.split('.').first
      type = i.split('.').last
      if type.to_i == 0
        create(:core_id => core_id, :displacement_id => id, :displacement_type => type,
          :displacement_desc => displacement_desc_0)
      else
        create(:core_id => core_id, :displacement_id => id, :displacement_type => type,
          :displacement_desc => displacement_desc_1)
      end
    end
  end
end

