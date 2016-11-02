class UsersController < ApplicationController
  def register
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_answer_path
    else
      flash[:errors]= @user.errors.full_messages
      render "register"
    end
  end

  def user_params
    params.require(:user).permit(:name, :contact_name, :email, :phone_number)
  end
end
