class AddClosedToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :closed_question, :boolean
  end
end
