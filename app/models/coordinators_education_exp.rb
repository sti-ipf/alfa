# -*- encoding : utf-8 -*-
class CoordinatorsEducationExp < ActiveRecord::Base
  belongs_to :coordinator
  belongs_to :education_exp
  
  def update_with_years(coordinator_years, coordinator_popular_education_years)
    self.update_attributes(:years => coordinator_years.to_i, :popular_education_years => coordinator_popular_education_years.to_i)
  end
end

