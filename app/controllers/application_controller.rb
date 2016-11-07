class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def after_sign_in_path_for(resource)
    "/admins"
  end

  def authenticate_super_admin
    @admin = Admin.find_by(id: current_admin.id)
    unless @admin.super_admin == true
    redirect_to "/questions"
    end
  end
end
