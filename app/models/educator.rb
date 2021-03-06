# -*- encoding : utf-8 -*-
class Educator < ActiveRecord::Base
  belongs_to :core
  has_and_belongs_to_many :professional_exps
  has_and_belongs_to_many :rooms
  has_many :social_participations
  has_many :phones
  has_many :education_exps, :through => :educators_education_exps
  has_many :educators_education_exps

  has_and_belongs_to_many :use_social_net_works
  has_and_belongs_to_many :know_social_net_works
  has_and_belongs_to_many :internet_uses
  has_and_belongs_to_many :pc_uses

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
  
  validates_presence_of :core_id, :name

  def age
    return '' if self.dob.nil?
    value = Date.today.year - self.dob.year
    value -= 1 if (Date.today < self.dob + value.years)
    return value
  end

  def where_use_pc_to_s
    get_attribute_value(self.where_use_pc, WHERE_USE_PC)
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

  def has_internet_to_s
    if self.has_internet
      "Sim"
    else
      "Não"
    end
  end

  def has_pc_to_s
    if self.has_pc
      "Sim"
    else
      "Não"
    end
  end

  def know_social_network_to_s
    if self.know_social_network
      "Sim"
    else
      "Não"
    end
  end

  def travel_disponibility_to_s
    if self.travel_disponibility
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

  def where_has_internet_to_s
    get_attribute_value(self.where_has_internet, Educator::WHERE_HAS_INTERNET)
  end

  def about_pc_use_to_s
    get_attribute_value(self.about_pc_use, Educator::ABOUT_PC_USE)  
  end

  def internet_access_local_to_s
    get_attribute_value(self.internet_access_local, Student::INTERNET_ACCESS_LOCAL)   
  end

  def familiar_income_to_s
    get_attribute_value(self.familiar_income, Coordinator::FAMILIAR_INCOME)   
  end

  def age_range_to_s
    get_attribute_value(self.age_range, AGE_RANGE)   
  end

  def special_need_type_to_s
    get_attribute_value(self.special_need_type, SPECIAL_NEED)   
  end

  def self.to_csv_file(educators)
    array = []
    educators.each do |r|
      new_array = Array.new
      puts r.name
      new_array << r.id  
      new_array << r.name
      new_array << r.start_date_to_students.try(:strftime, "%d/%m/%Y")
      new_array << r.age
      new_array << r.gender_to_s
      new_array << r.dob.try(:strftime, "%d/%m/%Y") 
      new_array << r.ethnicity_to_s
      new_array << r.hometown
      new_array << r.district  
      new_array << r.number  
      new_array << r.zip_code
      new_array << r.state 
      new_array << r.zone_to_s
      new_array << r.zone_desc 
      new_array << r.address 
      new_array << r.civil_status_to_s
      new_array << r.rg  
      new_array << r.cpf 
      new_array << r.voter_id  
      new_array << r.professional_id 
      new_array << r.professional_serie  
      new_array << r.birth_or_marriage_certificate_id  
      new_array << r.social_id 
      new_array << r.sons_number 
      new_array << r.first_son_age 
      new_array << r.second_son_age  
      new_array << r.third_son_age 
      new_array << r.forth_son_age 
      new_array << r.education_level_to_s
      new_array << r.education_level_desc  
      new_array << r.familiar_income_to_s 
      new_array << r.house_to_s
      new_array << r.house_desc  
      new_array << r.house_type_to_s  
      new_array << r.special_need_to_s
      new_array << r.political_affiliation_to_s
      new_array << r.political_party 
      new_array << r.political_desc  
      new_array << r.religion_to_s
      new_array << r.religion_desc 
      new_array << r.association_to_s
      new_array << r.association_desc  
      new_array << r.cooperative_to_s
      new_array << r.core.try(:name)
      new_array << r.core_identification 
      new_array << r.age_range_to_s
      new_array << r.internet_access_local_to_s
      new_array << r.internet_access_local_desc  
      new_array << r.email 
      new_array << r.house_type_desc 
      new_array << r.special_need_desc 
      new_array << r.special_need_type_to_s
      new_array << r.participation_reason  
      new_array << r.travel_disponibility_to_s
      new_array << r.last_books  
      new_array << r.tv_programs 
      new_array << r.experience  
      new_array << r.other_job 
      new_array << r.agree_with_any_period 
      new_array << r.what_teach  
      new_array << r.subjects  
      new_array << r.has_pc_to_s
      new_array << r.where_use_pc_to_s
      new_array << r.about_pc_use_to_s  
      new_array << r.pc_uses.collect(&:description).join(', ')
      new_array << r.where_use_pc_desc 
      new_array << r.has_internet_to_s
      new_array << r.where_has_internet_to_s  
      new_array << r.where_has_internet_desc 
      new_array << r.internet_uses.collect(&:description).join(', ')
      new_array << r.for_what_use_internet_desc  
      new_array << r.use_social_net_works.collect(&:description).join(', ')
      new_array << r.know_social_net_works.collect(&:description).join(', ')
      new_array << r.know_social_network_desc  
      new_array << r.use_social_network_desc 
      new_array << r.observation 
      new_array << r.identification_on.try(:strftime, "%d/%m/%Y")
      new_array << r.profession
      array << new_array
    end
    array
  end
private

  def get_attribute_value(attribute, array)
    array.each do |a|
      return a.first if a.last == attribute
    end
    ''
  end
  
end

