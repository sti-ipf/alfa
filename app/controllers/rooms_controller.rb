class RoomsController < ApplicationController
  
  before_filter :load_data, :only => [:new, :create, :edit, :update]

  def index
    @rooms = Room.all(:conditions => "id IN (SELECT room_id FROM coordinators_rooms WHERE coordinator_id IN (SELECT id FROM coordinators WHERE core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))))
      OR id IN (SELECT room_id FROM educators_rooms WHERE educator_id IN (SELECT id FROM educators WHERE core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))))")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
    @room = Room.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
    @room = Room.new
    @room.periods.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/1/edit
  def edit
    @room = Room.find(params[:id], :include => [:periods])
    if @room.periods.count == 0
      @room.periods.build
    end

  end

  # POST /rooms
  # POST /rooms.xml
  def create
    @room = Room.new(params[:room])

    respond_to do |format|
      if @room.save
        format.html { redirect_to(rooms_path, :notice => t('room.created')) }
        format.xml  { render :xml => @room, :status => :created, :location => @room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.xml
  def update
    @room = Room.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        format.html { redirect_to(rooms_path, :notice => t('room.updated')) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.xml
  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to(rooms_url) }
      format.xml  { head :ok }
    end
  end

protected

  def load_data
    @coordinators = Coordinator.all(:conditions => "core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))")
    @educators = Educator.all(:conditions => "core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))")
    @cores = Core.all(:conditions => "city_id IN (#{@cities_ids})").collect {|c| ["#{c.city.try(:name)} - #{c.community}", c.id]}
  end

end
