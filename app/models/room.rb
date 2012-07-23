class Room < ActiveRecord::Base
  has_and_belongs_to_many :coordinators
  has_and_belongs_to_many :educators
  belongs_to :core
  has_many :periods
  has_many :students
  has_many :lecture_days
  
  accepts_nested_attributes_for :periods, :reject_if => lambda { |a| a[:day_of_week].blank? }, :allow_destroy => true

  validates_presence_of :core_id
end
