class Question < ActiveRecord::Base
  serialize :properties, JSON
end
