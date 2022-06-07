class House < ApplicationRecord
  has_many :languages
  has_many :questions
  has_many :users
end
