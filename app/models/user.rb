# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  attr_accessor :password_confirmation
  has_and_belongs_to_many :cities

  ROLES = [['Administrador', 1], ['Coordenador', 2], ['Monitor', 3], ['Apenas Visualização', 4]]

  acts_as_authentic do |c|
    c.validate_email_field = false
    c.validate_password_field = false #ignoring validations for password fields
  end

  def access
    result = []
    self.cities.each do |c|
      result << c.name
    end
    result.join(", ")
  end

  def role_to_s
    ROLES.each do |r|
      return r.first if r.last == self.role
    end
    ''
  end

  def cores
    if !self.educator_id.blank?
      educator = Educator.find(self.educator_id)
      return [educator.core]
    else
      city_ids = self.cities.collect(&:id).join(",")
      return Core.all(:conditions => "city_id IN (#{city_ids})")
    end
    
  end

  def admin?
    self.role == 1
  end

  def coordinator?
    self.role == 2
  end

  def educator?
    self.role == 3
  end

  def default?
    self.role == 4
  end
end

