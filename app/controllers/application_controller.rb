# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery

  filter_parameter_logging :password, :password_confirmation
  helper_method :current_user_session, :current_user
  before_filter :require_user, :set_locale, :get_cities_ids

private
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end

  def require_user
    if !current_user
      flash[:error] = "Você deve estar logado para acessar essa página"
      redirect_to sign_in_path
      return false
    end
  end

  def set_locale
    I18n.locale = 'pt'
  end

  def get_cities_ids
    if !current_user.nil?
      if current_user.admin
        @cities_ids = City.all.collect(&:id)
      else
        @cities_ids = current_user.cities.collect(&:id)
      end
      @cities_ids = @cities_ids.join(',')
    end
  end

  
end
