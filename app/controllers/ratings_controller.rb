class RatingsController < ApplicationController
  before_action :authenticate_admin!

  def new
    render 'new.html.erb'
  end

  def create
    @rating = Rating.new(
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
