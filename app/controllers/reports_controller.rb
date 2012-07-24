class ReportsController < ApplicationController
  def index
    @cores = []
    @rooms = []
    @cores << ['Todos', 0]
    cores = Core.all(:conditions => "city_id IN (#{@cities_ids})", :order => "name ASC").collect {|c| ["#{c.name}", c.id]}
    cores.each do |c|
      @cores << c  
    end
  end

  def show
    data = Student.report_data(params[:core_id].to_i, params[:room_id].to_i, session[:city_id].to_i, params[:column])
    @graphic_title = get_graphic_title(params[:column])
    @data = 
    @data = []
    data.each do |d|
      if params[:column] == 'profession'
        legend = eval("d.#{params[:column]}")
      else
        legend = eval("d.#{params[:column]}_to_s")
      end
      @data << "['#{legend}', #{d.total}]"
    end
    @data = @data.join(',')
    respond_to do |format|
      format.js
      format.html
    end
  end


  def update_rooms
    core = Core.find(params[:core_id])
    rooms = core.rooms.collect{|c| [c.name, c.id]}
    @rooms = []
    @rooms << ['Todas', 0] if rooms.count > 1
    rooms.each do |r|
      @rooms << r
    end
    respond_to do |format|
      format.js if request.xhr?
    end
  end

private

  def get_graphic_title(column)
    case column
      when 'age'
        'Por faixa de idade'
      when 'gender'
        'Por sexo'
      when 'ethnicity'
        'Por raça'
      when 'profession'
        'Por profissão'
      when 'religion'
        'Por religião'
    end
  end

end
