# -*- encoding : utf-8 -*-
class Educator < ActiveRecord::Base
  belongs_to :core
  has_and_belongs_to_many :professional_exps
  has_and_belongs_to_many :rooms
  has_many :social_participations
  has_many :phones
  has_many :education_exps, :through => :educators_education_exps
  has_many :educators_education_exps

  AGE_RANGE = [["De 18 a 29 anos", 1], ["De 30 a 44 anos", 2], ["De 45 a 59 anos", 3], ["Acima de 60 anos", 4]]
  ABOUT_PC_USE = [["Consegue usar sozinho", 1], ["Não sabe usar, mas gostaria de aprender", 2], ["Consegue usar com ajuda de alguém", 3], ["Não sabe usar, não gostaria de aprender", 4]]
  WHERE_USE_PC = [["Lan House", 1], ["Na casa de família", 2], ["Na casa de amigo", 3], ["Outros", 4]]
  WHICH_USES = [["Escrever textos", 1], ["Ouvir música e/ou assistir vídeos", 2], ["Ler textos", 3], ["Acessar a Internet", 4], ["Fazer planilhas", 5], ["Jogar", 6],
    ["Realizar cursos", 7], ["Participar de redes sociais", 8]]
  SPECIAL_NEED = [["Deficiência visual", 1], ["Deficiência física", 2], ["Deficiência auditiva", 3], ["Deficiência intelectual/mental", 4]]
  FOR_WHAT_USE_INTERNET = [["Lazer", 1], ["Estudo", 2], ["Trabalho", 3], ["Outros", 4]]
  SOCIAL_NETWORK = [["Orkut", 1], ["Facebook", 2], ["Twitter", 3], ["Outras", 4]]
  WHERE_HAS_INTERNET = [["Em casa", 1], ["No trabalho", 2], ["Em outros espaços", 3]]

  accepts_nested_attributes_for :phones, :reject_if => lambda { |a| a[:number].blank? }, :allow_destroy => true
  accepts_nested_attributes_for :social_participations, :allow_destroy => true

  def age
    value = Date.today.year - self.dob.year
    value -= 1 if (Date.today < self.dob + value.years)
    return value
  end

  def total_seats_to_s
    get_attribute_value(self.total_seats, Coordinator::TOTAL_SEATS)
  end

  def gender_to_s
    get_attribute_value(self.gender, Coordinator::GENDERS)
  end

  def ethnicity_to_s
    get_attribute_value(self.ethnicity, Coordinator::ETHNICITIES)
  end

  def political_party_to_s
    get_attribute_value(self.political_party, Coordinator::POLITICAL_PARTIES)
  end

  def zone_to_s
    get_attribute_value(self.zone, Coordinator::ZONES)
  end

  def civil_status_to_s
    get_attribute_value(self.civil_status, Coordinator::CIVIL_STATUS)
  end

  def house_to_s
    get_attribute_value(self.civil_status, Coordinator::HOUSES)
  end

  def house_type_to_s
    get_attribute_value(self.civil_status, Coordinator::HOUSE_TYPES)
  end

  def special_need_to_s
    if self.special_need
      "Sim"
    else
      "Não"
    end
  end

  def political_affiliation_to_s
    get_attribute_value(self.political_affiliation, Coordinator::POLITICAL_AFFILIATIONS)
  end

  def religion_to_s
    get_attribute_value(self.religion, Coordinator::RELIGIONS)
  end

  def association_to_s
    get_attribute_value(self.association, Coordinator::ASSOCIATIONS)
  end

  def cooperative_to_s
    get_attribute_value(self.cooperative, Coordinator::COOPERATIVES)
  end

  def education_level_to_s
    get_attribute_value(self.education_level, Coordinator::EDUCATION_LEVELS)
  end
private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end
  
end

