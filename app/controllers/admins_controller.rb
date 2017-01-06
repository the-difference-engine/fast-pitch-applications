class AdminsController < ApplicationController
  before_action :authenticate_admin!
  before_action :authenticate_super_admin, only: [:all_ratings, :add_super_admin, :archive]

    def index
      @super_admin = current_admin.super_admin
      @applicants = Applicant.all
    end

    def view
      @answers = Answer.where(applicant_id: params[:id]).order("id ASC")
      @applicant = @answers.first.applicant_id
      @archived = @answers.first.archived
      @super_admin = current_admin.super_admin
    end

    def archive
      @answers = Answer.where(applicant_id: params[:id])
      @archive = @answers.update(archived: true)
      redirect_to admins_path
      flash[:danger] = "Application Archived"
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
    flash[:success] = "Status Updated Successfully!"
  end

  def search
    @answers = Answer.where("LOWER(answer_text) LIKE ?", "%#{params[:search].downcase}%")
    @super_admin = current_admin.super_admin
    @applicants = @answers.map(&:applicant)
    render 'index.html.erb'
  end
end
