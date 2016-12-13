class AnswersController < ApplicationController
require 'pry'
  def index
    @applicant = current_applicant
  end

  def new
    @questions = Question.all
  end

  def show
    @questions = Question.all
    # binding.pry
    @answers = Answer.where(applicant_id: current_applicant.id).order("id ASC")
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
      end
      if @answer.save
        saved_answer << @answer
        @unanswered = Answer.where(answer_text: "")
        flash[:warning] = '@unanswered questions are still blank - remember to finish!'
      else
        render("/answers/new")
      end

    redirect_to "/"
    flash[:success] = "Application Saved"
  end

  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    # binding.pry
    if @answer.update(answer_text: params[:answer][:answer_text])
      redirect_to '/answers/edit'
      flash[:success] = "Answer Updated"
    else
      render 'edit'
    end
  end

end
