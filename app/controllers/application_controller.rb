class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_new_admin_session_path_for(resource)
    "/admins"
  end

  def after_new_applicant_registration_path_for(resource)
    "/"
  end

  def after_new_applicant_session_path_for(resource)
    new_answer_path
  end

  def authenticate_super_admin
    @admin = Admin.find_by(id: current_admin.id)
    unless @admin.super_admin == true
      redirect_to '/questions'
    end
  end

  def expire
    if 2.days.from_now < Time.current
      redirect_to '/'
      flash[:danger] = 'Invalid Token'
    end
  end
end
