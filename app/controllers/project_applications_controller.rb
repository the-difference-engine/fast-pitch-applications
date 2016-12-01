class ProjectApplicationsController < ApplicationController
  def index
    @questions = Question.all
    @answers = Answer.all
  end

  def new
    @questions = Question.all
    @answers = Answer.all

    @application = ProjectApplication.new(@questions, @answers)

    @token = params[:token]

    @user = User.find_by_token(@token)

    if @user.nil?
      redirect_to "/"
    end
  end

  def create
    @token = params[:token]

    @user = User.find_by_token(@token)

    if @user.nil?
      render "new", questions: @questions, token: @token
    end

    #{answers: {"1" => "blah blah"}}

    answers = params[:answers]

    answers.each do |question_id,answer_text|
      answer = Answer.new(user_id: @user.id, question_id: question_id, answer_text: answer_text)
      if !answer.save
        render "new", questions: @questions, token: @token
      end
    end

    redirect_to "/"
  end

  def edit
  end

  def update
  end

  def show
  end

  def answers_params
    params.require(:answers)
  end
end
