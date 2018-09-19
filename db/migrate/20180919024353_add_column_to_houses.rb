class AddColumnToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :price, :integer
  end
end
