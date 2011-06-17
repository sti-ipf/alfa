class StudentsController < ApplicationController
  # GET /students
  # GET /students.xml
  before_filter :load_data, :only => [:edit, :new, :update, :create]
  
  def index
    @students = Student.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @students }
    end
  end

  # GET /students/1
  # GET /students/1.xml
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/new
  # GET /students/new.xml
  def new
    @student = Student.new
    3.times {@student.phones.build}
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.xml
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to(students_path, :notice => t('student.created')) }
        format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.xml
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to(students_path, :notice => t('student.updated')) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.xml
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to(students_url) }
      format.xml  { head :ok }
    end
  end

  def load_data
    @cores = Core.all.collect {|c| ["#{c.city} - #{c.community}", c.id]}
    @educators = Educator.all
    @genders = Coordinator::GENDERS
    @ethnicities = Coordinator::ETHNICITIES
    @ages = Student::AGES
    @actual_conditions = Student::ACTUAL_CONDITIONS
    @worker_situations = Student::WORKER_SITUATIONS
    @worker_situation_types = Student::WORKER_SITUATION_TYPES
    @zones = Coordinator::ZONES
    @civil_status = Coordinator::CIVIL_STATUS
    @education_levels = Coordinator::EDUCATION_LEVELS
    @houses = Coordinator::HOUSES
    @house_types = Coordinator::HOUSE_TYPES
    @religions = Coordinator::RELIGIONS
    @rooms = Room.all
  end
  
end
