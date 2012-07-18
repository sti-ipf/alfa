module LectureDaysHelper

  def generate_cancelled_button(cancelled, id)
    if cancelled
      string = "Descancelar"
      klass = "uncancel"
    else
      string = "Cancelar"
      klass = "cancel"
    end
    "#{link_to string, update_cancelled_path(:id => id), :class => klass, :remote => true}"
  end

end
