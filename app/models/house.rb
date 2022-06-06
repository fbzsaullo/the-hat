class House < ApplicationRecord
  has_many :languages
  has_many :options
  has_many :users
end
