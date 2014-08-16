class WelcomeController < ApplicationController
  def home
  	 @trips = Trip.all.limit(100)
  	 @locations = []

  	 @trips.each do |trip|
  	 	@start_station = Station.find_by(station_id: trip.start_station_id)
  		@end_station = Station.find_by(station_id: trip.end_station_id)
  		if @start_station && @end_station
  	 		@locations << [[@start_station.latitude, @start_station.longitude], [@end_station.latitude, @end_station.longitude]]
  	 	end
  	 	@locations.uniq!
  	 end
  end
end
