class AddColumnHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :host_name, :string
    add_column :houses, :host_url, :string
    add_column :houses, :title, :string
  end
end
