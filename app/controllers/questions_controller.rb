class QuestionsController < ApplicationController
  before_filter :authenticate_super_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @questions = Question.order("id")
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_text: params[:question_text], closed_question: params[:closed_question]) # this will generate a question object
    if @question.save
      redirect_to questions_path
    else
      #render form again
    end
  end

  def show
    render questions_path
  end

  def edit
    @question = Question.find_by(id: params[:id])
  end

  def update
    @question = Question.find_by(id: params[:id])
    @question.update(question_text: params[:question_text])
      redirect_to '/questions'
  end

  def destroy
    @question = Question.where(id: params[:id]).first
    @question.destroy
    redirect_to questions_path
  end

  def new_open
      @question = Question.create(
        question_text: params[:question_text],
        closed_question: false
      )
  end

  def new_closed
    @question = Question.create(
      question_text: params[:question_text],
      closed_question: true
    )
  end

  private

  def question_params
    params.require(:question).permit(:question_text, :closed_question)
  end
end
