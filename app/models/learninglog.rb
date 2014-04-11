class Learninglog < ActiveRecord::Base
  validates :content, presence: true
end
