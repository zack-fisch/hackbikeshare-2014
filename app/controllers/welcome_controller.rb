class WelcomeController < ApplicationController
  def home
  	 @trips = Trip.all.limit(10)
  	 @locations = []

  	 @trips.each do |trip|
  	 	@start_station = Station.find_by(station_id: trip.start_station_id)
  		@end_station = Station.find_by(station_id: trip.end_station_id)
  	 	@locations << [[@start_station.latitude, @start_station.longitude], [@end_station.latitude, @end_station.longitude]]
  	 	@locations.uniq!
  	 end
  end
end
