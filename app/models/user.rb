# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  attr_accessor :password_confirmation
  has_and_belongs_to_many :cities
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

  def admin_to_s
    if self.admin
      'Administrador'
    else
      'Padrão'
    end
  end
end

