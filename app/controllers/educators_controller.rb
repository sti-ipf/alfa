# -*- encoding : utf-8 -*-
class EducatorsController < ApplicationController

  before_filter :load_data, :only => [:edit, :new, :update, :create]
  # GET /educators
  # GET /educators.xml

  def update_rooms
    if params[:educator_id].to_i == 0
      @educator = Educator.new
    else
      @educator = Educator.find(params[:educator_id])
    end
    core = Core.find(params[:core_id])
    @rooms = core.rooms

    respond_to do |format|
      format.js if request.xhr?
    end
  end

  def index
    @educators = Educator.all(:conditions => "core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))", :include => [:core, :rooms], :order => "name ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @educators }
    end
  end

  # GET /educators/1
  # GET /educators/1.xml
  def show
    @educator = Educator.first(:conditions => "id = #{params[:id]}")
    if @educator.nil?
      redirect_to educators_path 
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @educator }
      end
    end
  end

  # GET /educators/new
  # GET /educators/new.xml
  def new
    @educator = Educator.new
    @rooms = []
    1.times {@educator.phones.build}
    @educator.social_participations.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @educator }
    end
  end

  # GET /educators/1/edit
  def edit
    @educator = Educator.find(params[:id], :include => [:social_participations, :phones, 
      :educators_education_exps, :educators_education_exps])

    if @educator.core.nil?
      @rooms = []
    else
      @rooms = @educator.core.rooms
    end

    @union_movement_desc = @educator.social_participations.first.union_movement_desc if !@educator.social_participations.first.nil?
    @ong_desc = @educator.social_participations.first.ong_desc if !@educator.social_participations.first.nil?
    @years = @educator.educators_education_exps.first.years if !@educator.educators_education_exps.first.nil?
    @popular_education_years = @educator.educators_education_exps.first.popular_education_years if !@educator.educators_education_exps.first.nil?
  end

  # POST /educators
  # POST /educators.xml
  def create
    @educator = Educator.new(params[:educator])
    ong_desc = params[:ong_desc]
    union_movement_desc = params[:union_movement_desc]
    educator_years = params[:educator_years]
    educator_popular_education_years = params[:educator_popular_education_years]
    respond_to do |format|
      if @educator.save
        if !@educator.social_participations.first.nil?
          @educator.social_participations.first.save_with_descs(ong_desc, union_movement_desc)
        end
        if !@educator.educators_education_exps.first.nil?
          @educator.educators_education_exps.first.update_with_years(educator_years, educator_popular_education_years)
        end
        flash[:success] = t('educator.created')
        format.html { redirect_to(educators_path) }
        format.xml  { render :xml => @educator, :status => :created, :location => @educator }
      else
        if @educator.core_id.nil?
          @rooms = []
        else
          @rooms = Core.find(core_id).rooms
        end
        
        flash[:error] = t('default_error_message')
        format.html { render :action => "new" }
        format.xml  { render :xml => @educator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /educators/1
  # PUT /educators/1.xml
  def update
    @educator = Educator.find(params[:id])
    ong_desc = params[:ong_desc]
    union_movement_desc = params[:union_movement_desc]
    educator_years = params[:educator_years]
    educator_popular_education_years = params[:educator_popular_education_years]
    respond_to do |format|
      if @educator.update_attributes(params[:educator])
        if !@educator.social_participations.first.nil?
          @educator.social_participations.first.save_with_descs(ong_desc, union_movement_desc)
        end
        if !@educator.educators_education_exps.first.nil?
          @educator.educators_education_exps.first.update_with_years(educator_years, educator_popular_education_years)
        end
        flash[:success] = t('educator.updated')
        format.html { redirect_to(educators_path) }
        format.xml  { head :ok }
      else
        if @educator.core_id.nil?
          @rooms = []
        else
          @rooms = Core.find(core_id).rooms
        end
        flash[:error] = t('default_error_message')
        format.html { render :action => "edit" }
        format.xml  { render :xml => @educator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /educators/1
  # DELETE /educators/1.xml
  def destroy
    @educator = Educator.find(params[:id])
    @educator.destroy

    respond_to do |format|
      format.html { redirect_to(educator_url) }
      format.xml  { head :ok }
    end
  end

  def load_data
    @cores = Core.all(:conditions => "city_id IN (#{@cities_ids})").collect {|c| ["#{c.community}", c.id]}
    @genders = Coordinator::GENDERS
    @ethnicities = Coordinator::ETHNICITIES
    @zones = Coordinator::ZONES
    @civil_status = Coordinator::CIVIL_STATUS
    @sons_number = Coordinator::SONS_NUMBER
    @education_levels = Coordinator::EDUCATION_LEVELS
    @familiar_income = Coordinator::FAMILIAR_INCOME
    @houses = Coordinator::HOUSES
    @house_types = Coordinator::HOUSE_TYPES
    @political_affiliations = Coordinator::POLITICAL_AFFILIATIONS
    @political_parties = Coordinator::POLITICAL_PARTIES
    @religions = Coordinator::RELIGIONS
    @associations = Coordinator::ASSOCIATIONS
    @cooperatives = Coordinator::COOPERATIVES
    @professional_exps = ProfessionalExp.all
    @education_exps = EducationExp.all
    @use_social_networks = UseSocialNetWork.all
    @know_social_networks = KnowSocialNetWork.all
    @internet_uses = InternetUse.all
    @pc_uses = PcUse.all
  end
end

