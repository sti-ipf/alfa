class LectureDaysController < ApplicationController
  
  before_filter :load_form_data, :only => [:new, :create, :edit, :update]

  def index
    @lecture_days = LectureDay.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lecture_days }
    end
  end

  # GET /lecture_days/1
  # GET /lecture_days/1.xml
  def show
    @lecture_day = LectureDay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @lecture_day }
    end
  end

  # GET /lecture_days/new
  # GET /lecture_days/new.xml
  def new
    @lecture_day = LectureDay.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @lecture_day }
    end
  end

  # GET /lecture_days/1/edit
  def edit
    @lecture_day = LectureDay.find(params[:id])
  end

  # POST /lecture_days
  # POST /lecture_days.xml
  def create
    @lecture_day = LectureDay.new(params[:lecture_day])

    respond_to do |format|
      if @lecture_day.save
        format.html { redirect_to(@lecture_day, :notice => 'Lecture day was successfully created.') }
        format.xml  { render :xml => @lecture_day, :status => :created, :location => @lecture_day }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @lecture_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /lecture_days/1
  # PUT /lecture_days/1.xml
  def update
    @lecture_day = LectureDay.find(params[:id])

    respond_to do |format|
      if @lecture_day.update_attributes(params[:lecture_day])
        format.html { redirect_to(@lecture_day, :notice => 'Lecture day was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @lecture_day.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /lecture_days/1
  # DELETE /lecture_days/1.xml
  def destroy
    @lecture_day = LectureDay.find(params[:id])
    @lecture_day.destroy

    respond_to do |format|
      format.html { redirect_to(lecture_days_url) }
      format.xml  { head :ok }
    end
  end

protected

  def load_form_data
    @room = Room.find(params[:room_id])
  end

end
