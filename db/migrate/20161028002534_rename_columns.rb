class RenameColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :question, :question_text
    rename_column :answers, :answer, :answer_text
    remove_column :questions, :answer, :text
  end
end
