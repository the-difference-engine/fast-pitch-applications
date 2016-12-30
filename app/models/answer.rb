class Answer < ApplicationRecord
  belongs_to :applicant
  belongs_to :question

  def self.to_csv
    @questions = Question.all
    q_t = []
    @questions.each do |q|
      q_t << q.question_text
    end
    CSV.generate do |csv|
      csv << q_t
      all.each do |item|
        csv << item.attributes.values_at(*q_t)
      end
    end
  end

end
