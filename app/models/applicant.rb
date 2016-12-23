class Applicant < ApplicationRecord
  has_many :answers
  has_many :questions, through: :answers
  has_many :ratings
  has_many :admins, through: :ratings
  has_many :applicant_sectors
  has_many :sectors, through: :applicant_sectors

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # after_create :create_default_answers
  #
  # # this needs to be called after a user is verfied
  # def create_default_answers
  #   Question.all.each do |question|
  #     answer = Answer.new(applicant_id: self.id, question_id: question.id, answer_text: "")
  #     answer.save
  #   end
  # end
end
