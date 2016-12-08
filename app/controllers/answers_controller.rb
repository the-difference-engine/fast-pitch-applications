class AnswersController < ApplicationController

  def index
    @questions = Question.all
    @answers = Answer.all
  end

  def new
    @questions = Question.all
  end

  def show
    @questions = Question.all
    @answers = Answer.where(applicant_id: current_applicant.id)
  end

  def create
    saved_answer = []
    @questions = Question.all

    params[:answers].each do |question_id, answer_text|
      @answer = Answer.new(
        applicant_id: current_applicant.id,
        question_id: question_id,
        answer_text: answer_text
      )

      if @answer.save
        saved_answer << @answer
      else
        render("/answers/new")
         return
      end
    end

    redirect_to "/"
  end

  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    if @answer.update
      redirect_to '/answers'
    else
      render 'edit'
    end
  end

end
