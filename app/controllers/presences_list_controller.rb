class PresencesListController < ApplicationController
  
  def index
    @room = Room.find(params[:room_id])
    @months = LectureDay.all(:select => "DISTINCT month",:conditions => "room_id = #{params[:room_id]} and month is not null", :order => "year ASC, month ASC").collect(&:month)
  end

  def new
    @presence = Presence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @presence }
    end
  end

  # GET /presences/1/edit
  def edit
    @month = params[:month]
    presences = Presence.all(:conditions => "room_id = #{params[:room_id]} AND month = #{params[:month]}", :order => "student_id ASC")
    @room = Room.find(params[:room_id])
    @students = @room.students
    @presences = []
    i = 0
    @lecture_days = LectureDay.all(:conditions => "room_id = #{params[:room_id]} AND month = #{params[:month]}", :order => "lecture_on ASC")
    @students.each do |s|
      @presences << {} 
      @presences[i][:student] = s.name
      @presences[i][:student_id] = s.id
      @lecture_days.each do |l|
        presences.each do |p|
          @presences[i][l.id] = p if (l.id == p.lecture_day_id && p.student_id == s.id)
        end
      end
      i += 1
    end
    
    respond_to do |format|
      format.js
      format.html # index.html.erb
      format.xml  { render :xml => @presences }
    end
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
    @presence.update_attributes(:presence => params[:status])
    
    respond_to do |format|
      format.js if request.xhr?
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

  def update_student_presences
  end
end
