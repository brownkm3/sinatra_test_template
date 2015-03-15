class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :building_name
      t.string :building_code
    end
  end
end
