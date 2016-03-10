class Question < ActiveRecord::Base
  belongs_to :exam
  belongs_to :examiner
  has_many :codes


  after_create do
    self.exam.update total_score: self.exam[:total_score] + self.score
    self.exam.update problem_number: self.exam[:problem_number] + 1
  end

  before_destroy do
    self.exam.update total_score: self.exam[:total_score] - self.score
    self.exam.update problem_number: self.exam[:problem_number] - 1
  end
end
