class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def index

  end

  def my_ratings
    @ratings = Rating.where(admin_id: current_admin.id)
  end

end
