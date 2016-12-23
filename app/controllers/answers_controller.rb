class AnswersController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @applicant = current_applicant

    @admin = current_admin
    @current_date  = Time.zone.now
    # @deadline_date = Time.zone.local(2017, 1, 27, 12, 00)
    @deadline_date = Time.zone.local(2017, 1, 27, 12, 00)
    # date = Time.parse("27-01-2017, 12:00")
    if @current_date.to_i > @deadline_date.to_i
      redirect_to ''
      flash[:notice] = 'Deadline for Applications has been reached.'
    end
  end

  def new
    @questions = Question.all

    @info = []
    @questions.each do |question|
      if question.id < 475
        @info << question
      end
    end
  end

  def continued
    @questions = Question.all
    @in_depth = []
    @questions.each do |question|
      if question.id > 475
        @in_depth << question
      end
    end
    render 'answers/continued'

    if current_applicant
      @answers = Answer.where(applicant_id: current_applicant.id).order("id ASC")
    elsif current_admin
      @answers = Answer.where(applicant_id: params[:applicant_id])
    end

  end

  def new
    @questions = Question.all

    @answers = Answer.where(applicant_id: current_applicant.id).order("id ASC")

  end

  def show

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


    redirect_to "/answers"
    flash[:success] = "Progress Saved"
  end

  def sectors
    @applicant_sectors = ApplicantSector.find_by(applicant_id: current_applicant.id)
  end

  def sector_create
    i = 0
    arr = params[:applicant_sectors][:sector_id]
    arr.delete("")
    arr.length.times do |i|
    applicant_sector = ApplicantSector.create(
    applicant_id: current_applicant.id,
    sector_id: params[:applicant_sectors][:sector_id][i]
    )
    i += 1
    end
    redirect_to "/answers"
    flash[:success] = "Progress Saved"

    redirect_to "/"
  end

  def edit
    @answer = Answer.find_by(applicant_id: current_applicant.id)
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    if @answer.update(answer_text: params[:answer][:answer_text])
      redirect_to '/answers/edit'
      flash[:success] = "Answer Updated"
    else
      render 'edit'
    end
  end

  def sectors
    @applicant_sectors = ApplicantSector.find_by(applicant_id: current_applicant.id)
  end

  def sector_create
    i = 0
    arr = params[:applicant_sectors][:sector_id]
    arr.delete("")
    arr.length.times do |i|
    applicant_sector = ApplicantSector.create(
    applicant_id: current_applicant.id,
    sector_id: params[:applicant_sectors][:sector_id][i]
    )
    i += 1
    end
    redirect_to "/answers"
    flash[:success] = "Progress Saved"
  end

  def edit
    @answer = Answer.find_by(id: params[:id])
  end

  def update
    @answer = Answer.find_by(id: params[:id])
    if @answer.update(answer_text: params[:answer_text])
      redirect_to '/answers'
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
