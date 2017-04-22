class AddArchiveToApplicant < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :archived, :boolean, default: :false
  end
end
