class CreateApplicantSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :applicant_sectors do |t|
      t.integer :applicant_id
      t.integer :sector_id
      t.timestamps
    end
  end
end
