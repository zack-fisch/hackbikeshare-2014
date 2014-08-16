class DropStationsAndTripsTables < ActiveRecord::Migration
  def change
  	drop_table :stations
  	drop_table :trips
  end
end
