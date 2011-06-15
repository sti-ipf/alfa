# -*- encoding : utf-8 -*-
class EducatorsEducationExp < ActiveRecord::Base
  belongs_to :educator
  belongs_to :education_exp
  
  def update_with_years(educator_years, educator_popular_education_years)
    self.update_attributes(:years => educator_years.to_i, :popular_education_years => educator_popular_education_years.to_i)
  end
end

