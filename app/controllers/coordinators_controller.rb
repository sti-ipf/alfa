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
    @coordinator = Coordinator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @coordinator }
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
    @coordinator = Coordinator.find(params[:id], :include => [:coordinators_displacements, :coordinators_partner_resources, :coordinators_seat_types])

    @coordinator.coordinators_partner_resources.each do |c|
      @resource_desc = c.resource_desc if !c.resource_desc.nil?
    end

    @coordinator.coordinators_seat_types.each do |c|
      @seat_type_desc = c.seat_type_desc if !c.seat_type_desc.nil?
    end

    @coordinator.coordinators_displacements.each do |c|
      @displacement_desc_0 = c.displacement_desc if !c.displacement_desc.nil? && c.displacement_type == 0
      @displacement_desc_1 = c.displacement_desc if !c.displacement_desc.nil? && c.displacement_type == 1
    end

  end

  # POST /coordinators
  # POST /coordinators.xml
  def create
    @coordinator = Coordinator.new(params[:coordinator])
    respond_to do |format|
      if @coordinator.save
        format.html { redirect_to(@coordinator, :notice => t('coordinator.created')) }
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

    respond_to do |format|
      if @coordinator.update_attributes(params[:coordinator])
        format.html { redirect_to(@coordinator, :notice => t('coordinator.updated')) }
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
    @cores = Core.all
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
  end
end

