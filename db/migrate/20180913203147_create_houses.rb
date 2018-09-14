class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :description
      t.float :lat
      t.float :lng
      t.string :pic_url

      t.timestamps
    end
  end
end
