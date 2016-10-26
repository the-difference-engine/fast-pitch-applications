class AddIdsToRatings < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :user_id, :integer
    add_column :ratings, :admin_id, :integer 
  end
end
