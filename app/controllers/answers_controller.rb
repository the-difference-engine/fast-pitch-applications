class AnswersController < ApplicationController

  def index
    @questions = Question.all
    @answers = Answer.all
  end

  def new
    @questions = Question.page(params[:page]).per(4)
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to answers_path
    # else
       #render form again
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:answer)
  end
end
