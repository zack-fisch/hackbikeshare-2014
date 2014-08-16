class ChangeLogtitudeToLongitudeOnStationsTable < ActiveRecord::Migration
  def change
  	remove_column :stations, :longtitude
  	add_column :stations, :longitude, :float
  end
end
