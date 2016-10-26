class User < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answers
  has_many :ratings
  has_many :admins, through: :ratings
end
