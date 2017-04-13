class Admin::RegistrationsController < Devise::RegistrationsController
  def new
    flash[:danger] = 'You cannot register as an admin'
    redirect_to root_path
  end

  def create
    flash[:danger] = 'You cannot register as an admin'
    redirect_to root_path
  end
end
