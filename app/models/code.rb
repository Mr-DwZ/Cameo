class Code < ActiveRecord::Base
  belongs_to :examinee
  belongs_to :question
  enum language: [:cpp, :c, :java]
end