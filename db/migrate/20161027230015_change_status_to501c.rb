class ChangeStatusTo501c < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :status, :tax_exempt
  end
end
