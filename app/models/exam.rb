class Exam < ActiveRecord::Base
  has_many :results
  has_many :examinees, through: :results
  belongs_to :examiner
end
