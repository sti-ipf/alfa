class Student < ActiveRecord::Base
  belongs_to :educator
  belongs_to :core
  belongs_to :room
  has_many :phones
  
  AGES = [[I18n.t("student.age.15_to_19"), 1], [I18n.t("student.age.20_to_29"), 2], [I18n.t("student.age.30_to_44"), 3], 
    [I18n.t("student.age.45_to_59"), 4], [I18n.t("student.age.up_to_60"), 5]]
  ACTUAL_CONDITIONS = [[I18n.t("student.actual_condition.literate"), 1], [I18n.t("student.actual_condition.no_literate"), 2]]
  WORKER_SITUATIONS = [[I18n.t("student.profession.employee"), 1], [I18n.t("student.profession.autonomous"), 2], 
    [I18n.t("student.profession.unemployed"), 3], [I18n.t("student.profession.retired"), 4]]
  WORKER_SITUATION_TYPES =   [[I18n.t("student.profession.registered"), 1], [I18n.t("student.profession.no_registered"), 2], 
    [I18n.t("student.profession.formal"), 3], [I18n.t("student.profession.informal"), 4]]

  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
  

  def age_to_s
    get_array_value(AGES, self.age)
  end

  def gender_to_s
    get_array_value(Coordinator::GENDERS, self.gender)
  end

  def ethnicity_to_s
    get_array_value(Coordinator::ETHNICITIES, self.ethnicity)
  end

  def zone_to_s
    get_array_value(Coordinator::ZONES, self.zone)
  end

  def civil_status_to_s
    get_array_value(Coordinator::CIVIL_STATUS, self.civil_status)
  end

  def education_level_to_s
    get_array_value(Coordinator::EDUCATION_LEVELS, self.education_level)
  end

  def actual_condition_to_s
    get_array_value(Student::ACTUAL_CONDITIONS, self.actual_condition)
  end

private

  def get_array_value(array, value)
    array.each do |a|
      return a.first if a.last == value
    end
  end

end
