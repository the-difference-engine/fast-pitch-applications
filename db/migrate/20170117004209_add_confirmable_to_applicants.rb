class AddConfirmableToApplicants < ActiveRecord::Migration[5.0]
  def change
      add_column :applicants, :confirmation_token, :string
      add_column :applicants, :confirmed_at, :datetime
      add_column :applicants, :confirmation_sent_at, :datetime
      add_column :applicants, :unconfirmed_email, :string
  end
end
