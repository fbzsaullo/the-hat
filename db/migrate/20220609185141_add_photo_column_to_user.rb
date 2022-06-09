class AddPhotoColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :photo, :string
  end
end
