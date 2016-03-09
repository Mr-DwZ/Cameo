class Question < ActiveRecord::Base
  belongs_to :exam
  belongs_to :examiner
  has_many :codes
  serialize :properties, JSON
end
