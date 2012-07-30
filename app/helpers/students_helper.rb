module StudentsHelper

  def show_students_without_mother_or_all_students(type)
    if type == 1
      "<div class = 'presence_lists'> #{link_to 'Visualizar alfabetizandos sem o nome da mãe', without_mother_name_path, :remote => true} </div>"
    else
      "<div class = 'presence_lists'> #{link_to 'Visualizar todos alfabetizandos', students_path} </div>"
    end
    
  end
end
