class KnowSocialNetWork < ActiveRecord::Base
  has_and_belongs_to_many :educators
end
