# -*- encoding : utf-8 -*-
class PresenceListCommentsController < ApplicationController

  def index
    @student = Student.find(params[:student_id])
    @comment = PresenceListComment.first(:conditions => "month = #{params[:month]} AND student_id = #{params[:student_id]}")
  end

  def new
    @student = Student.find(params[:student_id])
    @comment = PresenceListComment.first(:conditions => "month = #{params[:month]} AND student_id = #{params[:student_id]}")
    @button = I18n.t('update')
    if @comment.nil?
      @button = I18n.t('create')
      @comment = PresenceListComment.create(:month => params[:month], :student_id => params[:student_id])
    end

  end
  

  def update
    @comment = PresenceListComment.find(params[:id])
    @comment.update_attributes(params[:presence_list_comment])
  end
end

