# -*- encoding : utf-8 -*-
module ApplicationHelper
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association, path="")
      new_object = f.object.class.reflect_on_association(association).klass.new
      fields = f.fields_for(association, [new_object], :child_index => "new_#{association}") do |builder|
        render(path + association.to_s.singularize + "_fields", :f => builder)
      end
      fields = fields.gsub("\"","'").gsub("&",'&amp;').gsub("<",'&lt;').gsub(">",'&gt;').gsub("\n", '')
      link_to_function(name, ("add_fields(this, '#{association}', \"#{raw(fields)}\")"))
  end
  
  def show_messages
    @messages = ''
    flash.each do |type, message|
      @messages = "#{@messages}<br>#{message}"
      @type = type

    end
    javascript = "noty({'text':'#{@messages}',
          'layout':'bottom','type':'#{@type}','animateOpen':{'height':'toggle'},
          'animateClose':{'height':'toggle'},'speed':500,'timeout':5000,
          'closeButton':false,'closeOnSelfClick':true,'closeOnSelfOver':true});"
    if defined?(@type)
      return javascript 
    else
      ''
    end
  end

  def hidden_fields
    if session[:city_id].to_i <= 2
      'display: none;'
    else
      ''
    end
  end

  def show_month(month_number)
    months = %w(Jan Fev Mar Abr Mai Jun Jul Ago Set Out Nov Dez)
    months[month_number - 1].downcase
  end

  def generate_graphic_links(params = {})
    html = ''
    array = ['age', 'gender', 'ethnicity', 'occupation_id', 'religion']
    array.delete(params[:column])
    array.each do |a|
      title = ''
      title = case a
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
      html += " #{link_to title, show_second_report_path(:column => params[:column], :second_column => a, :core_id => params[:core_id], :room_id => params[:room_id]), :remote => true, :class => 'second_report_link'}"
    end
    html
  end
end

