#require_relative '../../config/application'

class Student < ActiveRecord::Base
  has_many :truths
  has_one :lie

end