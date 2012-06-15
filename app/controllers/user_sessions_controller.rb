# -*- encoding : utf-8 -*-
class UserSessionsController < ApplicationController
  
  skip_before_filter :require_user, :except => [:destroy]

  def new
    @user_session = UserSession.new
    render :layout => 'login'
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:success] = I18n.t('welcome_back')
      redirect_to root_path
    else
      flash[:error] = "Informações de acesso inválidas"
      render :action => 'new', :layout => 'login'
    end
  end

  def destroy
    @user_session = UserSession.find(params[:id])
    @user_session.destroy
    flash[:success] = I18n.t('logout_message')
    redirect_to sign_in_path
  end
end

