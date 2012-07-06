# -*- encoding : utf-8 -*-
class CoresController < ApplicationController

  before_filter :load_data, :only => [:edit, :new, :update, :create]
  # GET /cores
  # GET /cores.xml

  def update_city
    session[:city_id] = params[:city]
  end


  def index
    @cores = Core.all(:conditions => "city_id IN (#{@cities_ids})", :include => [:city], :order => "name ASC")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cores }
    end
  end

  # GET /cores/1
  # GET /cores/1.xml
  def show
    @core = Core.first(:conditions => "id = #{params[:id]}")
    if @core.nil?
      redirect_to cores_path 
    else
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @core }
      end
    end
  end

  # GET /cores/new
  # GET /cores/new.xml
  def new
    @core = Core.new
    @core.phones.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core }
    end
  end

  # GET /cores/1/edit
  def edit
    @core = Core.find(params[:id], :include => [:cores_displacements, :cores_partner_resources, :cores_seat_types])

    @core.cores_partner_resources.each do |c|
      @resource_desc = c.resource_desc if !c.resource_desc.nil?
    end

    @core.cores_seat_types.each do |c|
      @seat_type_desc = c.seat_type_desc if !c.seat_type_desc.nil?
    end

    @core.cores_displacements.each do |c|
      @displacement_desc_0 = c.displacement_desc if !c.displacement_desc.nil? && c.displacement_type == 0
      @displacement_desc_1 = c.displacement_desc if !c.displacement_desc.nil? && c.displacement_type == 1
    end

  end

  # POST /cores
  # POST /cores.xml
  def create
    @core = Core.new(params[:core])
    seat_type_desc = params[:seat_type_desc]
    resource_desc = params[:resource_desc]

    respond_to do |format|
      if @core.save
        CoresDisplacement.create_displacements(params[:displacement_ids], @core.id,
          params[:displacement_desc_0], params[:displacement_desc_1])
        CoresSeatType.update_seat_type_desc(seat_type_desc, @core.id) if !seat_type_desc.blank?
        CoresPartnerResource.update_resource_desc(resource_desc, @core.id) if !resource_desc.blank?
        flash[:success] = t('core.created')
        format.html { redirect_to(cores_path) }
        format.xml  { render :xml => @core, :status => :created, :location => @core }
      else
        flash[:error] = t('default_error_message')
        format.html { render :action => "new" }
        format.xml  { render :xml => @core.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cores/1
  # PUT /cores/1.xml
  def update
    @core = Core.find(params[:id])
    seat_type_desc = params[:seat_type_desc]
    resource_desc = params[:resource_desc]
    respond_to do |format|
      if @core.update_attributes(params[:core])
        CoresSeatType.update_seat_type_desc(seat_type_desc, @core.id) if !seat_type_desc.blank?
        CoresPartnerResource.update_resource_desc(resource_desc, @core.id) if !resource_desc.blank?
        flash[:success] = t('core.updated')
        format.html { redirect_to(cores_path) }
        format.xml  { head :ok }
      else
        flash[:error] = t('default_error_message')
        format.html { render :action => "edit" }
        format.xml  { render :xml => @core.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cores/1
  # DELETE /cores/1.xml
  def destroy
    @core = Core.find(params[:id])
    @core.destroy

    respond_to do |format|
      format.html { redirect_to(cores_url) }
      format.xml  { head :ok }
    end
  end

  def load_data
    @displacements = Displacement.all
    @desk_types = DeskType.all
    @cities = City.all(:conditions => "id IN (#{@cities_ids})").collect{|c| [c.name, c.id]}
  end
end

