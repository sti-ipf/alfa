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
    get_show_data
    respond_to do |format|
      format.js
      format.html
      format.pdf do
        render :pdf => "relatorio"
      end
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

  def show_second_report
    get_second_report_data

    respond_to do |format|
      format.js
      format.html
    end
  end

  def show_full_report
    get_show_data
    get_second_report_data

    respond_to do |format|
      format.pdf do
        render :pdf => "relatorio"
      end
    end
  end

private

  def get_show_data
    @column = params[:column]
    @core_id = params[:core_id].to_i
    @room_id = params[:room_id].to_i
    @city = City.find(session[:city_id]).name
    if @core_id == 0
      @core_name = 'Todos'
    else
      @core_name = Core.find(@core_id).name
    end  
    if @room_id == 0
      @room_name = 'Todas'
    else
      @room_name = Room.find(@room_id).name
    end

    data = Student.report_data(params[:core_id].to_i, params[:room_id].to_i, session[:city_id].to_i, params[:column])
    @graphic_title = get_graphic_title(params[:column])
    @data = []
    data.each do |d|
      if params[:column] == 'profession'
        legend = eval("d.#{params[:column]}")
      elsif params[:column] == 'occupation_id'
        
        if d.occupation_id.blank?
          legend = nil 
        else
          occupation = Occupation.first(:conditions => "id = #{d.occupation_id}")
          legend = occupation.try(:name)
        end
      else
        legend = eval("d.#{params[:column]}_to_s")
      end
      legend = 'Não informado' if legend.blank?
      @data << "['#{legend}', #{d.total}]"
    end
    @data = @data.join(',')
  end

  def get_second_report_data
    data = Student.report_data(params[:core_id].to_i, params[:room_id].to_i, session[:city_id].to_i, params[:column], params[:second_column])
    @column = params[:column]
    @second_column = params[:second_column]
    @core_id = params[:core_id]
    @room_id = params[:room_id]
    @second_graphic_title = get_graphic_title([params[:column], params[:second_column]])
    @categories, categories_numbers = get_categories(params[:column])
    @second_categories, second_categories_numbers = get_categories(params[:second_column])
    @graphics_data = []
    i = 0
    categories_numbers.each do |c|
      graphic_title = @categories[i]
      j = 0
      graphic_data = []
      second_categories_numbers.each do |s|
        legend = @second_categories[j]
        value = 0
        data.each do |d|
          if eval("d.#{params[:second_column]}") == s && eval("d.#{params[:column]}") == c
            value = d.total 
            break
          end
        end
        j += 1
        next if value.to_i == 0
        graphic_data << "['#{legend}', #{value}]"
      end
      @graphics_data << {:title => graphic_title, :data => graphic_data.join(',')}
      i += 1
    end
    

  end

  def get_categories(column)
    array = []
    array[0] = []
    array[1] = []
    case column
      when 'age'
        Student::AGES.each do |a|
          array[0] << a.first
          array[1] << a.last
        end
      when 'gender'
        Coordinator::GENDERS.each do |a|
          array[0] << a.first
          array[1] << a.last
        end
      when 'ethnicity'
        Coordinator::ETHNICITIES.each do |a|
          array[0] << a.first
          array[1] << a.last
        end
      when 'occupation_id'
        Occupation.all.each do |o|
          array[0] << o.name
          array[1] << o.id
        end
      when 'religion'
        Coordinator::RELIGIONS.each do |a|
          array[0] << a.first
          array[1] << a.last
        end
    end
    array[1] << nil
    array[0] << 'Não informado'
    return array[0], array[1]
  end

  def get_graphic_title(column)
    title = []
    column.each do |c|
      title << case c
        when 'age'
          'Por faixa de idade'
        when 'gender'
          'Por sexo'
        when 'ethnicity'
          'Por raça'
        when 'occupation_id'
          'Por profissão'
        when 'religion'
          'Por religião'
      end
    end
    if title.count == 1
      title[0]
    else
      "#{title[0]} e #{title[1].downcase}"
    end
    
  end

end
