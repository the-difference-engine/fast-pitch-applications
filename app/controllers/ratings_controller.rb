class RatingsController < ApplicationController
  before_action :authenticate_admin!

  def new
    @user = User.find_by(id: params[:id])
    @questions = Question.all
    @answers = Answer.where(user_id: @user.id, question_id: params[:question_id])
    render 'new.html.erb'
  end

  def create
    @user = User.find_by(id: params[:id])
    @rating = Rating.new(
    admin_id: current_admin.id,
    user_id: @user.id,
    social_mission: params[:social_mission],
    organization_and_progress: params[:organization_and_progress],
    innovation: params[:innovation],
    potential_impact: params[:potential_impact],
    inspiration_factor: params[:inspiration_factor]
    )
    @rating.save
    if @rating.valid?
      @rating.update(
      total: @rating.total
      )
    end
  end

end
