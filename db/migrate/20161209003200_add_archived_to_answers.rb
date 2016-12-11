class AddArchivedToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :archived, :boolean, :default => false
  end
end
