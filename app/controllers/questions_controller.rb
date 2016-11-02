class QuestionsController < ApplicationController
  def index
    @questions = Question.order("updated_at DESC")
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params) #this will generate a question object
    # binding.pry
    if @question.save
      redirect_to questions_path
    else
      #render form again
    end
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
    if @question.destroy
      redirect_to questions_path
    else

    end
  end 

  private

  def question_params
    params.require(:question).permit(:question, :answer)
  end
end
