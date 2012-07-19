class PresencesListController < ApplicationController
  # GET /presences
  # GET /presences.xml
  def index
    @presences = Presence.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @presences }
    end
  end

  # GET /presences/1
  # GET /presences/1.xml
  def show
    @presence = Presence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @presence }
    end
  end

  # GET /presences/new
  # GET /presences/new.xml
  def new
    @presence = Presence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @presence }
    end
  end

  # GET /presences/1/edit
  def edit
    @presence = Presence.find(params[:id])
  end

  # POST /presences
  # POST /presences.xml
  def create
    @presence = Presence.new(params[:presence])

    respond_to do |format|
      if @presence.save
        format.html { redirect_to(@presence, :notice => 'Presence was successfully created.') }
        format.xml  { render :xml => @presence, :status => :created, :location => @presence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @presence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /presences/1
  # PUT /presences/1.xml
  def update
    @presence = Presence.find(params[:id])

    respond_to do |format|
      if @presence.update_attributes(params[:presence])
        format.html { redirect_to(@presence, :notice => 'Presence was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @presence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /presences/1
  # DELETE /presences/1.xml
  def destroy
    @presence = Presence.find(params[:id])
    @presence.destroy

    respond_to do |format|
      format.html { redirect_to(presences_url) }
      format.xml  { head :ok }
    end
  end
end
