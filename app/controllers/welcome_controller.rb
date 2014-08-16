class WelcomeController < ApplicationController
  def home
  	 @trips = Trip.all.limit(10)
  	# @trips.each do |trip|
  	# 	@start_station = Station.find_by(station_id: trip.start_station_id)
  	# 	@end_station = Station.find_by(station_id: trip.end_station_id)
  	# end
  end
end
