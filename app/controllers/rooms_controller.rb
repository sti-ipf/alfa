class RoomsController < ApplicationController
  
  before_filter :load_data, :only => [:new, :create, :edit, :update]

  def index
    if current_user.try(:educator_id).blank?
      @rooms = Room.all(:conditions => "core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))", :include => [:core, :coordinators, :students, :educators], :order => "name ASC")
    else
      rooms_id = []
      ActiveRecord::Base.connection.execute("SELECT room_id FROM educators_rooms 
        WHERE educator_id = #{current_user.educator_id}").each do |r|
          rooms_id << r.first
      end
      if rooms_id.count == 0
        @rooms = []
      else
        rooms_id = rooms_id.join(',')
        @rooms = Room.all(:conditions => "id IN (#{rooms_id}) AND core_id IS NOT NULL", 
          :include => [:core, :coordinators, :students, :educators], :order => "name ASC")
      end
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
    @room = Room.find(params[:id], :include => [:educators, :coordinators, :core, :students])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
    @room = Room.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/1/edit
  def edit
    @room = Room.find(params[:id])
  end

  # POST /rooms
  # POST /rooms.xml
  def create
    @room = Room.new(params[:room])

    respond_to do |format|
      if @room.save
        flash[:success] = t('room.created')
        format.html { redirect_to(rooms_path) }
        format.xml  { render :xml => @room, :status => :created, :location => @room }
      else
        flash[:error] = t('default_error_message')
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
        flash[:success] = t('room.updated')
        format.html { redirect_to(rooms_path) }
        format.xml  { head :ok }
      else
        flash[:error] = t('default_error_message')
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
    @coordinators = Coordinator.all(:conditions => "core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))", :order => "name ASC")
    @educators = Educator.all(:conditions => "core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))", :order => "name ASC")
    @cores = Core.all(:conditions => "city_id IN (#{@cities_ids})", :order => "name ASC").collect {|c| ["#{c.city.try(:name)} - #{c.name}", c.id]}
  end

end
