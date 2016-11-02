class AdminAttributes < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :name, :string
    add_column :admins, :super_admin, :boolean
  end
end
