class AddImageAndDescriotionToHouses < ActiveRecord::Migration[6.1]
  def change
    add_column :houses, :description, :string
    add_column :houses, :image, :string
  end
end
