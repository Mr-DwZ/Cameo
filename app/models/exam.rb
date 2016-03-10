class Exam < ActiveRecord::Base
  has_many :results
  has_many :examinees, through: :results
  belongs_to :examiner
  has_many :questions

  after_create do
    self.total_score = 0
    self.problem_number = 0
  end
end
