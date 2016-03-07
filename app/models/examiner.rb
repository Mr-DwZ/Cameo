class Examiner < ActiveRecord::Base
  has_many :exams
  has_many :questions
end
