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
  INTERNET_ACCESS_LOCAL = [["Em casa", 1], ["No trabalho", 2], ["Em outros espaços", 3]]
  EDUCATION_LEVELS = [["Frequentou até 1 ano", 5], ["Frequentou mais de um ano", 6], ["Não frequentou", 7]]
  FAMILIAR_INCOME = [["Sem renda", 1], ["Até 1 salário mínimo", 2], ["De 1 a 2 SM", 3], ["De 2 a 3 SM", 4], ["De 3 a 4 SM", 5], ["Acima de 5 SM", 6]]
  HOUSE_TYPES = [["Alvenaria", 1], ["Madeira", 2], ["Pau-apique", 3], ["Lona/Papelão", 4], ["Palha", 5], ["Outros", 6]]
  VISION_LOSS = [["Sim. Não consegue de modo algum", 1], ["Necessita de Braile", 2], ["Grande dificuldade, só consegue enxergar usando óculos", 3], ["Alguma dificuldade mas consegue enxergar sem óculos", 4], ["Não, nenhuma dificuldade", 5]]
  HEARING_DISABILITY = [["Sim. Não consegue de modo algum", 1], ["Necessita de libras", 2], ["Grande dificuldade só consegue ouvir usando aparelho", 3], ["Alguma dificuldade mas consegue ouvir sem aparelho", 4], ["Não. Nenhuma dificuldade", 5]]
  PHYSICAL_DISABILITY = [["Sim. Não consegue de modo algum", 1], ["Necessita de cadeiras de roda", 2], ["Grande dificuldade, só consegue usando bengala/aparelho de apoio", 3], ["Sim, alguma dificuldade mas consegue caminhar e/ou subir/descer degraus", 4], ["Não, nenhuma dificuldade", 5]]
  INTELECTUAL_DISABILITY = [["área cognitiva (dificuldade de aprendizagem de conceitos abstratos, foco de atenção, capacidade  de memorização e resolução de problemas)", 1],
    ["área motora (dificuldade de manusear/manipular objetos, coordenação motora, mobilidade)", 2], 
    ["área de comunicação (dificuldade de se comunicar e interagir socialmente com os demais)", 3], ["Nenhuma", 4]]
  SOCIAL_PARTICIPATION = [["Nenhuma", 1], ["Movimento sindical", 2], ["Movimento social popular (jovens, mulheres, negros, ambientalista, sem terra, sem teto, GLBTT, outros)", 3], ["ONG", 4]]
  ASSOCIATION = [["Comunitária", 1], ["De trabalhadores rurais", 2], ["De bairro", 3], ["De artesãos", 4], ["Outra", 5], ["Nenhuma", 6]]
  COOPERATIVE = [["De trabalho", 1], ["De produção", 2], ["De crédito", 3], ["De artesãos", 4], ["Outra", 5], ["Nenhuma", 6]]

  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true

#  validates_presence_of :mother_name


  def self.report_data(core_id, room_id, city_id)
    conditions = []
    if core_id == 0
      conditions << "AND core_id = #{params[:core_id]} "
    else
      conditions << "AND core_id IN (select id from cores where city_id IN (#{city_id})) "
    end

    if room_id > 0
      conditions << "AND room_id = #{room_id} "
    end

    data = Student.find_by_sql("select count(*) as total, age from students where age is not null #{conditions.join(' ')} group by age ")
  end
  

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

  def special_need_to_s
    if self.special_need
      "Sim"
    else
      "Não"
    end
  end

  def religion_to_s
    get_array_value(Coordinator::RELIGIONS, self.religion)
  end

  def worker_situation_to_s
    get_array_value(WORKER_SITUATIONS, self.worker_situation)
  end

  def worker_situation_type_to_s
    get_array_value(WORKER_SITUATION_TYPES, self.worker_situation_type)
  end

  def house_to_s
    get_array_value(Coordinator::HOUSES, self.house)
  end


private

  def get_array_value(array, value)
    array.each do |a|
      return a.first if a.last == value
    end
    ''
  end

end
