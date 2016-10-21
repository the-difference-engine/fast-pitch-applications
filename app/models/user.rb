class User < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answer
  has_many :ratings
end
