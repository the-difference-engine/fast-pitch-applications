class Applicant < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answers
  has_many :ratings
  has_many :admins, through: :ratings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
