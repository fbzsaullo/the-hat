class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :answers
  has_one_attached :photo
  belongs_to :house, optional: true

  ## Validations
  # validates :photo, file_size: { less_than_or_equal_to: 5.megabytes },file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
end
