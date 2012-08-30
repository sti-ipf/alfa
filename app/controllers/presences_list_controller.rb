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
    @presence_list = PresenceList.all(:conditions => "month = #{params[:month]} AND room_id = #{params[:room_id]}", :include => [:student])
    
    @month = params[:month]
    @room = Room.find(params[:room_id])
    @core = @room.core
    @educators = Educator.find_by_sql("
      SELECT e.* FROM educators e INNER JOIN educators_rooms er ON er.educator_id = e.id 
      WHERE er.room_id = #{@room.id}").collect(&:name).join(", ")
    @presences = []
    @students = Student.all(:conditions => "room_id = #{@room.id}", :order => "name ASC")
    @lecture_days = LectureDay.all(:conditions => "room_id = #{params[:room_id]} AND month = #{params[:month]}", :order => "lecture_on ASC")


    if @presence_list.count == 0
      get_presence_list_data
      @type = 0
    else
      @type = 1
      get_data_for_show_presence_list
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

  def reopen
    @presence_list = PresenceList.delete_all("month = #{params[:month]} AND room_id = #{params[:room_id]}")
    
    edit
  end

  def finish
    presences = Presence.all(:conditions => "room_id = #{params[:room_id]} AND month = #{params[:month]}", :order => "student_id ASC")
    @room = Room.find(params[:room_id])
    @students = Student.all(:conditions => "room_id = #{@room.id}", :order => "name ASC")
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

    i = 0
    while (i < @students.count) do
      presence_array = []
      total_presence = 0
      total_lectures = 0
      @lecture_days.each do |l|
        p = @presences[i][l.id]
        presence_array << p.id
        total_presence += 1 if p.presence && p.has_class
        total_lectures += 1 if p.has_class
      end
      presence = (total_presence * 100)/total_lectures
      PresenceList.create(:room_id => params[:room_id], :student_id => @students[i].id, :month => params[:month],
        :presences => presence_array.join(","), :presence => presence)
      i += 1
    end
    edit

  end

  def update_student_presences
    @status = params[:status].to_i
    @student = Student.find(params[:student_id])
    ActiveRecord::Base.connection.execute "UPDATE presences set status = #{params[:status]} WHERE room_id = #{params[:room_id]} AND student_id = #{params[:student_id]} AND month = #{params[:month]}"
    edit
  end

  def fix
    @room = Room.find(params[:room_id])
    @room.students.each do |s|
      presences = Presence.all(:conditions => "student_id = #{s.id} AND room_id = #{@room.id} AND month = #{params[:month]}")
      if presences.count == 0
        Presence.create_presences(:room_id => @room.id, :student_id => s.id, :month => params[:month])
      end
    end
    flash[:success] = t('presence_list.fixed')
    redirect_to :back
  end

protected

  def get_presence_list_data
    presences = Presence.all(:conditions => "room_id = #{params[:room_id]} AND month = #{params[:month]}", :order => "student_id ASC")
  
    i = 0
    
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
  end

  def get_data_for_show_presence_list
  end
end
