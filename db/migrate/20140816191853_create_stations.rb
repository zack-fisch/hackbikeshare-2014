class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :station_name
      t.integer :station_id
      t.float :latitude
      t.float :longtitude

      t.timestamps
    end
  end
end
