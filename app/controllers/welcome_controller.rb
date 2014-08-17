class WelcomeController < ApplicationController
  def home
    @stations = Station.pluck(:station_name)

    @station = Station.find_by(station_name: params[:station]) || Station.first
	  @trips = Trip.where(start_station_id: @station.station_id).limit(200)

	  @locations = []

	  @trips.each do |trip|
	 	  @start_station = Station.find_by(station_id: trip.start_station_id)
		  @end_station = Station.find_by(station_id: trip.end_station_id)
		  if @start_station && @end_station
	 		  @locations << [[@start_station.latitude, @start_station.longitude], [@end_station.latitude, @end_station.longitude]]
	 	  end
	  end
    @locations.uniq!
  end

  def map
    @people = Trip.all.limit(50).pluck(:zip_code)
    @people = @people.select {|person| person && person.length > 3 }
    @coordinates = []

    @people.each do |zip|
      @coordinates.push(Geocoder.coordinates(zip))
    end

    @coordinates.compact!s
  end
end
