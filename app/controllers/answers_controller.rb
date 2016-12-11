class AnswersController < ApplicationController
require 'pry'
  def index
    @applicant = current_applicant
  end

  def new
    @questions = Question.all
  end

  def show
    @admin = current_admin
    @questions = Question.all
    if current_applicant
      @answers = Answer.where(applicant_id: current_applicant.id).order("id ASC")
    elsif current_admin
      @answers = Answer.where(applicant_id: params[:applicant_id])
    end
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
    if @answer.update(answer_text: params[:answer][:answer_text])
      redirect_to '/answers/edit'
    else
      render 'edit'
    end
  end

  def archive
    @answers = Answer.where(applicant_id: params[:applicant_id])
    @answers.each do |a|
      if a.update(archived: true)
        redirect_to '/admins'
      else
        render '/answers/edit'
      end
    end
  end

end
