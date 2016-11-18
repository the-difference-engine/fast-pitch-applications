class UserMailer < ApplicationMailer
  def user_token_email(user)
    @user = user
    @url = Rails.application.secrets.default_url + "application/#{user.token}"
    mail(to: @user.email, subject: "Welcome, Please Fill Out the Application")
  end
end
