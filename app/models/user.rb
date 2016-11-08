class User < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answers
  has_many :ratings
  has_many :admins, through: :ratings

  validates :email, :name, :contact_name, :phone_number, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  after_create :generate_token

  def generate_token
    update(token: SecureRandom.urlsafe_base64(nil, false))
  end
end
