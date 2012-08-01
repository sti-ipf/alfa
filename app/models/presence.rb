class Presence < ActiveRecord::Base
  belongs_to :lecture_day
  belongs_to :student
  belongs_to :room

  NO_CLASS = 0
  WITH_CLASS = 1
  AWAY = 2
  EVADED = 3

  STUDENT_STATUS = [["Frequente", WITH_CLASS], ["Ausente", AWAY], ["Evadido", EVADED]]
end
