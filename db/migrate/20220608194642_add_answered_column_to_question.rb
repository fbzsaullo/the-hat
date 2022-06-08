class AddAnsweredColumnToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :answered, :boolean, default: false
  end

  
end
