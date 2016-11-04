class QuestionsController < ApplicationController
  def index
    @questions = Question.order("updated_at DESC")
  end

  def new
    @admin = Admin.find_by(id: current_admin.id)
    if @admin.super_admin == true
      @question = Question.new
    else
      redirect_to "/questions"
    end
  end

  def create
    @admin = Admin.find_by(id: current_admin.id)
    if @admin.super_admin == true
      @question = Question.new(question_params) #this will generate a question object
      if @question.save
        redirect_to questions_path
      else
        #render form again
      end
    else
      redirect_to "/questions"
    end
  end

  def show
    redirect_to "/questions"
  end

  def edit
    @admin = Admin.find_by(id: current_admin.id)
    if @admin.super_admin == true
      @question = Question.where(id: params[:id]).first
    else
      redirect_to "/questions"
    end
  end

  def update
    @admin = Admin.find_by(id: current_admin.id)
    if @admin.super_admin == true
      @question = Question.where(id: params[:id]).first
      if @question.update_attributes(question_params)
        redirect_to questions_path
      else
        # render the edit form again
      end
    else
      redirect_to "/questions"
    end
  end

  def destroy
    @admin = Admin.find_by(id: current_admin.id)
    if @admin.super_admin == true
      @question = Question.where(id: params[:id]).first
      if @question.destroy
        redirect_to questions_path
      else

      end
    else
      redirect_to "/questions"
    end
  end

  private

  def question_params
    params.require(:question).permit(:question_text, :answer)
  end
end
