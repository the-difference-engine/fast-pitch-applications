class AnswersController < ApplicationController
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

  def sectors
    @applicant_sectors = ApplicantSector.find_by(applicant_id: current_applicant.id)
  end

  def sector_create
    i = 0
    arr = params[:applicant_sectors][:sectors]
    arr.delete("")
    arr.length.times do |i|
    @applicant_sector = ApplicantSector.create(
    applicant_id: current_applicant.id,
    sector_id: params[:applicant_sectors][:sectors][i]
    )
    i += 1
    end
    redirect_to "/"
  end

  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    # binding.pry
    if @answer.update(answer_text: params[:answer][:answer_text])
      redirect_to '/answers/edit'
    else
      render 'edit'
    end
  end
end
