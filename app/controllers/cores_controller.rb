# -*- encoding : utf-8 -*-
class CoresController < ApplicationController

  before_filter :load_data, :only => [:edit, :new, :update, :create]
  # GET /cores
  # GET /cores.xml


  def index
    @cores = Core.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cores }
    end
  end

  # GET /cores/1
  # GET /cores/1.xml
  def show
    @core = Core.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @core }
    end
  end

  # GET /cores/new
  # GET /cores/new.xml
  def new
    @core = Core.new
    @core.periods.build
    @core.phones.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @core }
    end
  end

  # GET /cores/1/edit
  def edit
    @core = Core.find(params[:id])
  end

  # POST /cores
  # POST /cores.xml
  def create
    @core = Core.new(params[:core])

    respond_to do |format|
      if @core.save
        format.html { redirect_to(@core, :notice => 'Core was successfully created.') }
        format.xml  { render :xml => @core, :status => :created, :location => @core }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @core.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cores/1
  # PUT /cores/1.xml
  def update
    @core = Core.find(params[:id])

    respond_to do |format|
      if @core.update_attributes(params[:core])
        format.html { redirect_to(@core, :notice => 'Core was successfully updated.') }
        format.xml  { head :ok }
      else
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
  end
end

