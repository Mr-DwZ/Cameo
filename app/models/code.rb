class Code < ActiveRecord::Base
  belongs_to :examinee
  enum language: [:cpp, :c, :java]
end