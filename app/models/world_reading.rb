class WorldReading < ActiveRecord::Base
  belongs_to :educator
  belongs_to :coordinator
  
  COMPUTER_USES = [[I18n.t("world_reading.cu_option_1"), 1],[I18n.t('world_reading.cu_option_2'), 2],
    [I18n.t('world_reading.cu_option_3'), 3]]
  WHAT_USES = [[I18n.t('world_reading.wu_option_1'), 1],[I18n.t('world_reading.wu_option_2'), 2],
      [I18n.t('world_reading.wu_option_3'), 3], [I18n.t('world_reading.wu_option_4'), 4],
      [I18n.t('world_reading.wu_option_5'), 5]]
  ABOUT_INTERNET_USES = [[I18n.t('world_reading.aiu_option_1'), 1],[I18n.t('world_reading.aiu_option_2'), 2],
      [I18n.t('world_reading.aiu_option_3'), 3], [I18n.t('world_reading.aiu_option_4'), 4], ['Não acesso a Internet',5]]
  INTERNET_CONNECTION_TYPES = [[I18n.t('world_reading.ict_option_1'), 1],
      [I18n.t('world_reading.ict_option_2'), 2], [I18n.t('world_reading.ict_option_3'), 3]]
  WHAT_YOU_DO_IN_INTERNET = [[I18n.t('world_reading.wydii_option_1'), 1],
      [I18n.t('world_reading.wydii_option_2'), 2], [I18n.t('world_reading.wydii_option_3'), 3], 
      [I18n.t('world_reading.wydii_option_4'), 4], [I18n.t('world_reading.wydii_option_5'), 5],
      [I18n.t('world_reading.wydii_option_6'), 6]]
  FREQUENCY_EMAIL_READING = [[I18n.t('world_reading.fer_option_1'), 1],
      [I18n.t('world_reading.fer_option_2'), 2],
      [I18n.t('world_reading.fer_option_3'), 3], [I18n.t('world_reading.fer_option_4'), 4], ['Não respondeu', 5]]
  SOCIAL_NETWORKING = [[I18n.t('world_reading.sn_option_1'), 1],
      [I18n.t('world_reading.sn_option_2'), 2],
      [I18n.t('world_reading.sn_option_3'), 3], [I18n.t('world_reading.sn_option_4'), 4], ['Não participa', 5]]
  DISCUSSION_LISTS = [[I18n.t('world_reading.dl_option_1'), 1],[I18n.t('world_reading.dl_option_2'), 2],
      [I18n.t('world_reading.dl_option_3'), 3], ['Não participa', 4]]

  validate :presence_of_educator_or_coordinator

  def person_funcion
    if self.educator.nil?
      if self.coordinator.nil?
        return ''
      else
        return "Coordenador"
      end
    else
      "Monitor"
    end
    ''
  end

  def person
    if self.educator.nil?
      if self.coordinator.nil?
        return ''
      else
        return self.coordinator.name
      end
    else
      return self.educator.name
    end
    ''
  end

  def availability_to_travel_to_s
    get_true_false(self.availability_to_travel)
  end    

  def computer_use_to_s
    get_array_value(COMPUTER_USES, self.computer_use)
  end

  def what_use_to_s
    get_array_value(WHAT_USES, self.what_use)
  end

  def about_internet_use_to_s
    get_array_value(ABOUT_INTERNET_USES, self.about_internet_use)
  end

  def make_searches_to_s
    get_true_false(self.make_searches)
  end

  def internet_connection_type_to_s
    get_array_value(INTERNET_CONNECTION_TYPES, self.internet_connection_type)
  end

  def what_you_do_in_internet_to_s
    get_array_value(WHAT_YOU_DO_IN_INTERNET, self.what_you_do_in_internet)
  end

  def frequency_email_reading_to_s
    get_array_value(FREQUENCY_EMAIL_READING, self.frequency_email_reading)
  end

  def social_networking_to_s
    get_array_value(SOCIAL_NETWORKING, self.social_networking)
  end

  def discussion_list_to_s
    get_array_value(DISCUSSION_LISTS, self.discussion_list)
  end

  def forum_to_s
    if self.forum == 1
      return "Não"
    else
      return "Sim"
    end
    ''
  end

  def chat_to_s
    get_true_false(self.chat)
  end

  def msn_to_s
    get_true_false(self.msn)
  end

  def has_blog_to_s
    get_true_false(self.has_blog)
  end
  
  def use_msn_with_frequency_to_s
    get_true_false(self.use_msn_with_frequency)
  end

  def share_photos_videos_to_s
    get_true_false(self.share_photos_videos)
  end

  def e_learning_to_s
    get_true_false(self.e_learning)
  end

protected

  def presence_of_educator_or_coordinator
    if self.educator_id.nil? && self.coordinator_id.nil?
      self.errors[:base] << "Especifique o monitor/coordenador responsável pela leitura mundo"
    end
  end

private

  def get_true_false(value)
    if value
      "Sim"
    else
      "Não"
    end
  end

def get_array_value(array, value)
    array.each do |a|
      return a.first if a.last == value
    end
    ''
  end
end
