class PresenceListsController < ApplicationController
  # GET /presence_lists
  # GET /presence_lists.xml
  def index
    @presence_lists = PresenceList.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @presence_lists }
    end
  end

  # GET /presence_lists/1
  # GET /presence_lists/1.xml
  def show
    @presence_list = PresenceList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @presence_list }
    end
  end

  # GET /presence_lists/new
  # GET /presence_lists/new.xml
  def new
    @room = params[:room_id]
    @presence_list = PresenceList.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @presence_list }
    end
  end

  # GET /presence_lists/1/edit
  def edit
    @presence_list = PresenceList.find(params[:id])
  end

  # POST /presence_lists
  # POST /presence_lists.xml
  def create
    @presence_list = PresenceList.new(params[:presence_list])

    respond_to do |format|
      if @presence_list.save
        format.html { redirect_to(@presence_list, :notice => 'Presence list was successfully created.') }
        format.xml  { render :xml => @presence_list, :status => :created, :location => @presence_list }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @presence_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /presence_lists/1
  # PUT /presence_lists/1.xml
  def update
    @presence_list = PresenceList.find(params[:id])

    respond_to do |format|
      if @presence_list.update_attributes(params[:presence_list])
        format.html { redirect_to(@presence_list, :notice => 'Presence list was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @presence_list.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /presence_lists/1
  # DELETE /presence_lists/1.xml
  def destroy
    @presence_list = PresenceList.find(params[:id])
    @presence_list.destroy

    respond_to do |format|
      format.html { redirect_to(presence_lists_url) }
      format.xml  { head :ok }
    end
  end
end
