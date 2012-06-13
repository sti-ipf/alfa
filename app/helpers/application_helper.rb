# -*- encoding : utf-8 -*-
module ApplicationHelper
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

  def link_to_add_fields(name, f, association)
      new_object = f.object.class.reflect_on_association(association).klass.new
      fields = f.fields_for(association, [new_object], :child_index => "new_#{association}") do |builder|
        render(association.to_s.singularize + "_fields", :f => builder)
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
end

