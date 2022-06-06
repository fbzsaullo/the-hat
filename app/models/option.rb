class Option < ApplicationRecord
  belongs_to :question
  belongs_to :house
  has_many :answers
end
