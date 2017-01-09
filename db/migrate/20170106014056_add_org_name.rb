class AddOrgName < ActiveRecord::Migration[5.0]
  def change
    add_column :applicants, :org_name, :string
  end
end
