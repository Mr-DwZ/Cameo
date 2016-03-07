class Question < ActiveRecord::Base
  belongs_to :exam
  belongs_to :examiner
  serialize :properties, JSON
end
