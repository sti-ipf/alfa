class StudentsController < ApplicationController
  
  load_and_authorize_resource

  before_filter :load_data, :only => [:edit, :new, :update, :create]
  

  def update_rooms
    if params[:student_id].to_i == 0
      @educator = Student.new
    else
      @educator = Student.find(params[:student_id])
    end
    core = Core.find(params[:core_id])
    @rooms = core.rooms.collect{|c| [c.name, c.id]}

    respond_to do |format|
      format.js if request.xhr?
    end
  end

  def without_mother_name
    @type = 0
    @students = Student.all(:conditions => "students.core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids})) AND (mother_name IS NULL OR mother_name = '') ",
      :include => [:educator, :core, :room], :order => "educators.name ASC, students.name ASC")
  end

  def index
    if current_user.try(:educator_id).blank?
      @students = Student.all(:conditions => "students.core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))",
        :include => [:educator, :core, :room], :order => "educators.name ASC, students.name ASC")
    else
      @students = Student.all(:conditions => "students.educator_id = #{current_user.educator_id}",
        :include => [:educator, :core, :room], :order => "educators.name ASC, students.name ASC")
    end

    respond_to do |format|
      format.html # index.html.erb
      format.js
      format.xml  { render :xml => @students }
    end
  end

  # GET /students/1
  # GET /students/1.xml
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.js
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/new
  # GET /students/new.xml
  def new
    @student = Student.new
    1.times {@student.phones.build}
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student }
    end
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
    if !@student.core.blank?
      @rooms = @student.core.rooms.collect{|c| [c.name, c.id]}
    end
  end

  # POST /students
  # POST /students.xml
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @student.save
        flash[:success] = t('student.created')
        format.html { redirect_to(students_path) }
        format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        flash[:error] = t('default_error_message')
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
        flash[:success] = t('student.updated')
        format.html { redirect_to(students_path) }
        format.xml  { head :ok }
      else
        flash[:error] = t('default_error_message')
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
    if current_user.try(:educator_id).blank?
      @cores = Core.all(:conditions => "city_id IN (#{@cities_ids})").collect{|c| ["#{c.city.try(:name)} - #{c.community}", c.id]}
      @educators = Educator.all(:conditions => "core_id IN (SELECT id FROM cores WHERE city_id IN (#{@cities_ids}))").collect{|c| [c.name, c.id]}
    else
      core = current_user.educator.core
      @cores =  [["#{core.city.try(:name)} - #{core.community}", core.id]]
      @educators = [[current_user.educator.name, current_user.educator_id]]
    end
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
    @occupations = Occupation.all(:order => "name ASC").collect{|c| [c.name, c.id]}
    @rooms = []    
  end
  
end
