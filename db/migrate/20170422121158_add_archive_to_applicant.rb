class AddArchiveToApplicant < ActiveRecord::Migration[5.0]
  def change
    remove_column :answers, :archived
    add_column :applicants, :archived, :boolean, default: :false
  end
end
