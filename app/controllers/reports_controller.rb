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
    @column = params[:column]
    @core_id = params[:core_id].to_i
    @room_id = params[:room_id].to_i
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

  def show_second_report
    data = Student.report_data(params[:core_id].to_i, params[:room_id].to_i, session[:city_id].to_i, params[:column], params[:second_column])
    @graphic_title = get_graphic_title([params[:column], params[:second_column]])
    @categories, categories_numbers = get_categories(params[:column])
    @second_categories, second_categories_numbers = get_categories(params[:second_column])
    @data = []
    
    array = []
    j = 0
    second_categories_numbers.each do |g|
      tmp_array = []
      i = 0
      categories_numbers.each do |a|
        data.each do |d|
          tmp_array << d.total if eval("d.#{params[:second_column]}") == g && eval("d.#{params[:column]}") == a
        end
        tmp_array << 0 if tmp_array[i].nil?
        i += 1
      end
      legend = @second_categories[j]
      array << [legend, tmp_array.join(', ')]
      j += 1
    end
    array.each do |a|
      @data << "{ name: '#{a.first}', data: [#{a.last}]}"
    end
    @data = @data.join(", ")

    categories = []
    @categories.each do |c|
      categories << "'#{c}'"
    end
    @categories = categories.join(", ")

    respond_to do |format|
      format.js
      format.html
    end
  end

private

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
