class QuestionsController < ApplicationController
  before_filter :authenticate_super_admin, only: [:new, :create, :edit, :update, :destroy]

  def index
    @questions = Question.order("updated_at DESC")
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params) # this will generate a question object
    if @question.save
      redirect_to questions_path
    else
      #render form again
    end
  end

  def show
    redirect_to "/questions"
  end

  def edit
    @question = Question.where(id: params[:id]).first
  end

  def update
    @question = Question.where(id: params[:id]).first
    if @question.update_attributes(question_params)
      redirect_to questions_path
    else
      # render the edit form again
    end
  end

  def destroy
    @question = Question.where(id: params[:id]).first
  end

  private

  def question_params
    params.require(:question).permit(:question, :answer)
  end
end
