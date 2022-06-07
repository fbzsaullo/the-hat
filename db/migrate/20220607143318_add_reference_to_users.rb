class AddReferenceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :house, null: true, foreign_key: true
  end
end
