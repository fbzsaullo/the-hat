class Question < ApplicationRecord
  has_many :answers
  belongs_to :house
  belongs_to :survey
end
