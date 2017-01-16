class Answer < ApplicationRecord
  belongs_to :applicant
  belongs_to :question

  def self.to_csv
    applicants = Applicant.all
    questions = Question.all
    sectors = Sector.all

    CSV.generate do |csv|
      csv << questions.map(&:question_text)
      applicants.each do |applicant|
        csv << applicant.answers.order(:question_id).map(&:answer_text) && applicant.sectors.map(&:name)
      end
    end
  end
end
