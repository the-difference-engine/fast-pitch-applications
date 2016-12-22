class DefaultAnswer < ActiveRecord::Migration[5.0]
  def change
    change_column :answers, :answer_text, :text, default: "Enter"
  end
end
