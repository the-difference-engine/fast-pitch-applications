class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :social_mission
      t.integer :organization_and_progress
      t.integer :innovation
      t.integer :potential_impact
      t.integer :inspiration_factor
      t.integer :total

      t.timestamps
    end
  end
end
