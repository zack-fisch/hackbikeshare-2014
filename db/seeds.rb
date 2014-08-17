# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# require 'csv'
# require 'net/http'

# station_uri = URI('https://s3-us-west-2.amazonaws.com/bikehack/stations.csv')
# station_data = Net::HTTP.get(station_uri).split("\r\n")

# trip_uri = URI('https://s3-us-west-2.amazonaws.com/bikehack/trips.csv')
# trip_data = Net::HTTP.get(trip_uri).split("\r\n")

# stations = []
# station_data.each do |data|
# 	stations << data.split(',')
# end

# stations.each do |row|
# 	Station.create(station_id: row[0], station_name: row[1], latitude: row[3], longitude: row[4])
# end

# trips = []
# trip_data.each do |data|
# 	trips << data.split(',')
# end

# trips.each do |row|
# 	Trip.create(duration: row[1], start_station_id: row[4], end_station_id: row[7], bike_number: row[8], zip_code: row[10])
# end

address = ['test']
locations = [['Bitmaker Labs', 43.647194, -79.387186],['CN Tower',43.642504, -79.3871], ['Royal Ontario Museum', 43.667384, -79.394691], ['Art Gallery of Ontario', 43.653529, -79.392651], ['University of Toronto', 43.663917, -79.393561]]
