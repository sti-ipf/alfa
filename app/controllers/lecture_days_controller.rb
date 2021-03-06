class LectureDaysController < ApplicationController
  
  before_filter :load_form_data, :only => [:new, :create, :edit, :update, :new_lecture_day]


  def update_cancelled
    @lecture_day = LectureDay.find(params[:id])
    if @lecture_day.cancelled
      @lecture_day.cancelled = false
    else
      @lecture_day.cancelled = true
    end
    @lecture_day.save
  end

  def index
    @room = Room.find(params[:room_id])
    @lecture_days = LectureDay.all(:conditions => "room_id = #{@room.id}", :order => "lecture_on ASC")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @lecture_days }
    end
  end

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

  def new_lecture_day
    @lecture_day = LectureDay.create(:room_id => params[:room_id], :month => 0)
  end

  # GET /lecture_days/1/edit
  def edit
    @lecture_day = LectureDay.find(params[:id])
  end

  # POST /lecture_days
  # POST /lecture_days.xml
  def create
    @lecture_day = LectureDay.new
    respond_to do |format|
      result, error_message = LectureDay.create_lectures(params[:start_on], params[:end_on], params[:room_id], params[:lecture_days])
      if result
        flash[:success] = 'Cadastro de aulas realizado com sucesso'
        format.html { redirect_to(room_lecture_days_path(:room_id => params[:room_id])) }
        format.xml  { render :xml => @lecture_day, :status => :created, :location => @lecture_day }
      else
        flash[:error] = error_message
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /lecture_days/1
  # PUT /lecture_days/1.xml
  def update
    @lecture_day = LectureDay.find(params[:id])
    params[:lecture_day][:lecture_on] = Date.strptime(params[:lecture_day][:lecture_on], '%d/%m/%Y').to_time.to_i
    respond_to do |format|
      if @lecture_day.update_attributes(params[:lecture_day])
        flash[:success] = 'Cadastro de aula atualizado com sucesso'
        format.html { redirect_to(room_lecture_days_path(:room_id => params[:room_id])) }
        format.xml  { head :ok }
      else
        flash[:error] = @lecture_day.errors.full_messages.join(", ")
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
      if @lecture_day.errors.blank?
        flash[:success] = 'Dia de aula apagado com sucesso'
      else
        flash[:error] = @lecture_day.errors.full_messages.first
      end
      format.html { redirect_to(room_lecture_days_path(:room_id => params[:room_id])) }
      format.xml  { head :ok }
    end
  end

protected

  def load_form_data
    @room = Room.find(params[:room_id])
  end

end
