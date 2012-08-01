class Presence < ActiveRecord::Base
  belongs_to :lecture_day
  belongs_to :student
  belongs_to :room

  NO_CLASS = 0
  WITH_CLASS = 1

  STUDENT_STATUS = [["Frequente", 2], ["Ausente", 3], ["Evadido", 4]]
end
