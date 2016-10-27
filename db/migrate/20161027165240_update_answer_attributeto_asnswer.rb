class UpdateAnswerAttributetoAsnswer < ActiveRecord::Migration[5.0]
  def change
    rename_column :answers, :user_answer, :answer
  end
end
