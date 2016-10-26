class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :admin

  validates :social_mission, presence: true
  validates :organization_and_progress, presence: true
  validates :innovation, presence: true
  validates :potential_impact, presence: true
  validates :inspiration_factor, presence: true

  def total
    @rating = Rating.find_by(id: params[:id])
    @total = @rating.social_mission + @rating.organization_and_progress + @rating.innovation + @rating.potential_impact + @rating.inspiration_factor
  end

end
