class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :applicant_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
