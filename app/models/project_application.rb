class ProjectApplication
  include ActiveModel::Model
  extend ActiveModel::Naming

  def initialize(questions,answers)
    @questions = questions
    @answers = answers
  end

  def questions
    @questions
  end
  
  def answers
    @answers
  end

  def user
    @user
  end
end
