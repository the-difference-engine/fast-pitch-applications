class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :authenticate_super_admin, only: [:all_ratings, :add_super_admin]

  def index
    @super_admin = current_admin.super_admin
  end

  def my_ratings
    @ratings = Rating.where(admin_id: current_admin.id)
  end

  def all_ratings
    @ratings = Rating.all
  end

  def add_super_admin
    @admins = Admin.where.not(id: current_admin.id)
  end

  def update
    @admin = Admin.find_by(id: params[:id])
    @admin.update(
      super_admin: !@admin.super_admin
    )
    @admins = Admin.all
    redirect_to admins_add_super_admin_path
    flash[:success] = "Success!"
  end

end
