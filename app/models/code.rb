class Code < ActiveRecord::Base
  enum language: [:cpp, :c, :java]
end