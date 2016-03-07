class Question < ActiveRecord::Base
  belongs_to :exam
  serialize :properties, JSON
end
