class AnswersController < ApplicationController

  def index
    @questions = Question.all
    @answers = Answer.all
  end

  def new
    @questions = Question.all
    @answer = Answer.new
  end

  def create
    params[:answers].each do |k, v|
      Answer.create(
        user_id: current_user.id,
        questions_id: questions.id,
        answer_text: params[answer_text]
      )
    end
  end
end
