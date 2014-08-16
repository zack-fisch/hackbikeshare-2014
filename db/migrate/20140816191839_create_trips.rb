class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :duration
      t.integer :start_station_id
      t.integer :end_station_id
      t.string :zip_code
      t.string :bike_number

      t.timestamps
    end
  end
end
