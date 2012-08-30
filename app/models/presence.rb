class Presence < ActiveRecord::Base
  belongs_to :lecture_day
  belongs_to :student
  belongs_to :room

  NO_CLASS = 0
  WITH_CLASS = 1
  ACTIVE = 2
  AWAY = 3
  EVADED = 4

  STUDENT_STATUS = [["Frequente", ACTIVE], ["Ausente", AWAY], ["Evadido", EVADED]]

  def self.create_presences(params = {})
    @lecture_days = LectureDay.all(:conditions => "room_id = #{params[:room_id]} AND month = #{params[:month]}")
    @lecture_days.each do |l|
      Presence.create(:lecture_day_id => l.id, :student_id => params[:student_id], 
        :room_id => params[:room_id], :month => params[:month])
    end
  end
end
