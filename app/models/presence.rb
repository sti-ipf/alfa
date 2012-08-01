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
end
