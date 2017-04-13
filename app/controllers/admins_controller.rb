class AdminsController < ApplicationController
  # include Devise::Models::Recoverable

  before_action :authenticate_admin!
  before_action :authenticate_super_admin, only: [:all_ratings, :add_super_admin, :archive, :new, :create]

    def index
      @super_admin = current_admin.super_admin
      @all_applicants = Applicant.all
      @applicants = []
      @all_applicants.each do |a|
        if a.answers.count > 0
          @applicants << a
        end
      end
    end

    def view
      @answers = Answer.where(applicant_id: params[:id]).order("id ASC")
      @applicant = @answers.first.applicant
      @archive = @answers.first.archived
      @super_admin = current_admin.super_admin
    end

    def archive
      @answers = Answer.where(applicant_id: params[:id])
      @archive = @answers.update(archived: true)
      redirect_to admins_path
      flash[:success] = "Application Archived"
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

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      flash[:success] = 'Admin created!'
      @admin.send_reset_password_instructions
      redirect_to new_admin_path
    else
      flash[:danger] = @admin.errors.full_messages
      render :new
    end
  end

  private

  def admin_params
    password = Faker::Internet.password(10, 20)
    params.require(:admin).permit(:name, :email, :super_admin)
          .merge(password: password, password_confirmation: password)
  end
end
