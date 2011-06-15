# -*- encoding : utf-8 -*-
class CoordinatorsController < ApplicationController

  before_filter :load_data, :only => [:edit, :new, :update, :create]
  # GET /coordinators
  # GET /coordinators.xml


  def index
    @coordinators = Coordinator.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @coordinators }
    end
  end

  # GET /coordinators/1
  # GET /coordinators/1.xml
  def show
    @coordinator = Coordinator.first(:conditions => "id = #{params[:id]}")
    if @coordinator.nil?
      redirect_to coordinators_path 
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @coordinator }
      end
    end
  end

  # GET /coordinators/new
  # GET /coordinators/new.xml
  def new
    @coordinator = Coordinator.new
    3.times {@coordinator.phones.build}
    @coordinator.social_participations.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @coordinator }
    end
  end

  # GET /coordinators/1/edit
  def edit
    @coordinator = Coordinator.find(params[:id], :include => [:social_participations, :phones, 
      :coordinators_education_exps, :coordinators_education_exps])
    @union_movement_desc = @coordinator.social_participations.first.union_movement_desc
    @ong_desc = @coordinator.social_participations.first.ong_desc if !@coordinator.social_participations.first.nil?
    @years = @coordinator.coordinators_education_exps.first.years if !@coordinator.coordinators_education_exps.first.nil?
    @popular_education_years = @coordinator.coordinators_education_exps.first.popular_education_years if !@coordinator.coordinators_education_exps.first.nil?
  end

  # POST /coordinators
  # POST /coordinators.xml
  def create
    @coordinator = Coordinator.new(params[:coordinator])
    ong_desc = params[:ong_desc]
    union_movement_desc = params[:union_movement_desc]
    coordinator_years = params[:coordinator_years]
    coordinator_popular_education_years = params[:coordinator_popular_education_years]
    respond_to do |format|
      if @coordinator.save
        if !@coordinator.social_participations.first.nil?
          @coordinator.social_participations.first.save_with_descs(ong_desc, union_movement_desc)
        end
        if !@coordinator.coordinators_education_exps.first.nil?
          @coordinator.coordinators_education_exps.first.update_with_years(coordinator_years, coordinator_popular_education_years)
        end
        format.html { redirect_to(coordinators_path, :notice => t('coordinator.created')) }
        format.xml  { render :xml => @coordinator, :status => :created, :location => @coordinator }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @coordinator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /coordinators/1
  # PUT /coordinators/1.xml
  def update
    @coordinator = Coordinator.find(params[:id])
    ong_desc = params[:ong_desc]
    union_movement_desc = params[:union_movement_desc]
    coordinator_years = params[:coordinator_years]
    coordinator_popular_education_years = params[:coordinator_popular_education_years]
    respond_to do |format|
      if @coordinator.update_attributes(params[:coordinator])
        if !@coordinator.social_participations.first.nil?
          @coordinator.social_participations.first.save_with_descs(ong_desc, union_movement_desc)
        end
        if !@coordinator.coordinators_education_exps.first.nil?
          @coordinator.coordinators_education_exps.first.update_with_years(coordinator_years, coordinator_popular_education_years)
        end
        format.html { redirect_to(coordinators_path, :notice => t('coordinator.updated')) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @coordinator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /coordinators/1
  # DELETE /coordinators/1.xml
  def destroy
    @coordinator = Coordinator.find(params[:id])
    @coordinator.destroy

    respond_to do |format|
      format.html { redirect_to(coordinator_url) }
      format.xml  { head :ok }
    end
  end

  def load_data
    @cores = Core.all.collect {|c| ["#{c.city} - #{c.community}", c.id]}
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
    @rooms = Room.all
  end
end

