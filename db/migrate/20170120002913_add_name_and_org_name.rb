class AddNameAndOrgName < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :name, :string
    add_column :admins, :org_name, :string
  end
end
