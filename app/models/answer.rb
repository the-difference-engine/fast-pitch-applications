class Answer < ApplicationRecord
  belongs_to :applicant
  belongs_to :question
  has_many :sectors

  # validate by calling question validations on the answers
  # check whether the answer is required and whether it exceeds the word count

end
