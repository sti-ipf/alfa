class WorldReadingsController < ApplicationController
  
  before_filter :load_data, :only => [:edit, :new, :update, :create]
  
  # GET /world_readings
  # GET /world_readings.xml
  def index
    @world_readings = WorldReading.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @world_readings }
    end
  end

  # GET /world_readings/1
  # GET /world_readings/1.xml
  def show
    @world_reading = WorldReading.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @world_reading }
    end
  end

  # GET /world_readings/new
  # GET /world_readings/new.xml
  def new
    @world_reading = WorldReading.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @world_reading }
    end
  end

  # GET /world_readings/1/edit
  def edit
    @world_reading = WorldReading.find(params[:id])
  end

  # POST /world_readings
  # POST /world_readings.xml
  def create
    @world_reading = WorldReading.new(params[:world_reading])

    respond_to do |format|
      if @world_reading.save
        format.html { redirect_to(world_readings_path, :notice => t('world_reading.created')) }
        format.xml  { render :xml => @world_reading, :status => :created, :location => @world_reading }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @world_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /world_readings/1
  # PUT /world_readings/1.xml
  def update
    @world_reading = WorldReading.find(params[:id])

    respond_to do |format|
      if @world_reading.update_attributes(params[:world_reading])
        format.html { redirect_to(world_readings_path, :notice => t('world_reading.updated')) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @world_reading.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /world_readings/1
  # DELETE /world_readings/1.xml
  def destroy
    @world_reading = WorldReading.find(params[:id])
    @world_reading.destroy

    respond_to do |format|
      format.html { redirect_to(world_readings_url) }
      format.xml  { head :ok }
    end
  end

  def load_data
    @educators = Educator.all.collect {|e| [e.name, e.id]}
    @coordinators = Coordinator.all.collect {|c| [c.name, c.id]}
    @computer_uses = WorldReading::COMPUTER_USES
    @what_uses = WorldReading::WHAT_USES
    @about_internet_uses = WorldReading::ABOUT_INTERNET_USES
    @internet_connection_types = WorldReading::INTERNET_CONNECTION_TYPES
    @what_you_do_in_internet = WorldReading::WHAT_YOU_DO_IN_INTERNET
    @frequency_email_reading = WorldReading::FREQUENCY_EMAIL_READING
    @social_networking = WorldReading::SOCIAL_NETWORKING
    @discussion_lists = WorldReading::DISCUSSION_LISTS
  end
  
end
