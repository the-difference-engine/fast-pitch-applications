class ChangingUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :answers, :user_id, :applicant_id
  end
end
