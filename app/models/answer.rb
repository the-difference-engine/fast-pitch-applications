class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  # validate by calling question validations on the answers
  # check whether the answer is required and whether it exceeds the word count 

end
