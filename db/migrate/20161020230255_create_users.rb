class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :contact_name
      t.string :email
      t.string :phone_number
      t.string :token
      t.boolean :status

      t.timestamps
    end
  end
end
