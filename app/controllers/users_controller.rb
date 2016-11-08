class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]

  def register
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.user_token_email(@user).deliver_now
      redirect_to new_answer_path
    else
      flash[:errors]= @user.errors.full_messages
      render "register"
    end
  end

  def user_params
    params.require(:user).permit(:name, :contact_name, :email, :phone_number)
  end

  def show
    @questions = Question.all

  end

  private

  def authenticate_user
    @user = User.find_by(token: params[:token])
    unless @user
      flash[:warning] = "Please register"
      redirect_to "/register"
    end
  end
end
