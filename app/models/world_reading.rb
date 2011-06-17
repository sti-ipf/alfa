class WorldReading < ActiveRecord::Base
  belongs_to :educator
  belongs_to :coordinator
  
  COMPUTER_USES = [[I18n.t("world_reading.cu_option_1"), 1],[I18n.t('world_reading.cu_option_2'), 2],
    [I18n.t('world_reading.cu_option_3'), 3]]
  WHAT_USES = [[I18n.t('world_reading.wu_option_1'), 1],[I18n.t('world_reading.wu_option_2'), 2],
      [I18n.t('world_reading.wu_option_3'), 3], [I18n.t('world_reading.wu_option_4'), 4],
      [I18n.t('world_reading.wu_option_5'), 5]]
  ABOUT_INTERNET_USES = [[I18n.t('world_reading.aiu_option_1'), 1],[I18n.t('world_reading.aiu_option_2'), 2],
      [I18n.t('world_reading.aiu_option_3'), 3], [I18n.t('world_reading.aiu_option_4'), 4]]
  INTERNET_CONNECTION_TYPES = [[I18n.t('world_reading.ict_option_1'), 1],
      [I18n.t('world_reading.ict_option_2'), 2], [I18n.t('world_reading.ict_option_3'), 3]]
  WHAT_YOU_DO_IN_INTERNET = [[I18n.t('world_reading.wydii_option_1'), 1],
      [I18n.t('world_reading.wydii_option_2'), 2], [I18n.t('world_reading.wydii_option_3'), 3], 
      [I18n.t('world_reading.wydii_option_4'), 4], [I18n.t('world_reading.wydii_option_5'), 5],
      [I18n.t('world_reading.wydii_option_6'), 6]]
  FREQUENCY_EMAIL_READING = [[I18n.t('world_reading.fer_option_1'), 1],
      [I18n.t('world_reading.fer_option_2'), 2],
      [I18n.t('world_reading.fer_option_3'), 3], [I18n.t('world_reading.fer_option_4'), 4]]
  SOCIAL_NETWORKING = [[I18n.t('world_reading.sn_option_1'), 1],
      [I18n.t('world_reading.sn_option_2'), 2],
      [I18n.t('world_reading.sn_option_3'), 3], [I18n.t('world_reading.sn_option_4'), 4]]
  DISCUSSION_LISTS = [[I18n.t('world_reading.dl_option_1'), 1],[I18n.t('world_reading.dl_option_2'), 2],
      [I18n.t('world_reading.dl_option_3'), 3]]
end
