class Examinee < ActiveRecord::Base
  has_many :results
  has_many :exams, through: :results
end
