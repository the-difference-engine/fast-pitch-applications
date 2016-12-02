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
    params[:answers].each do |question_id, answer_text|
      @answer = Answer.create(
        applicant_id: current_applicant.id,
        question_id: question_id,
        answer_text: answer_text
      )
    if @answer.valid?
      redirect_to "/answers/new"
    else
      render "index"
    end
  end
  end
end
