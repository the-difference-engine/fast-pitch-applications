class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:org_name, :name])
  end

  def after_sign_in_path_for(resource)
    if resource_name == :admin
       '/admins'
    elsif resource_name == :applicant
       '/answers'
    end
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
