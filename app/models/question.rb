class Question < ApplicationRecord
  has_many :answers
  has_many :applicants, through: :answers
  belongs_to :sector

  # This is where we write the word count checker method
  # validate for under word count
  # Check the answer_text and compare it to the question word Limit
  # Add error message for too-long answer

  # form input text_area can also have a word count limit on it!

  # Same thing with required questions: an is_required validation will check if
  # the user has skipped a required question
end
