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

locations = [['Bitmaker Labs', 43.647194, -79.387186],['CN Tower',43.642504, -79.3871], ['Royal Ontario Museum', 43.667384, -79.394691], ['Art Gallery of Ontario', 43.653529, -79.392651], ['University of Toronto', 43.663917, -79.393561]]
badges = ['https://jlau-bucket-1.s3.amazonaws.com/uploads/topic/image/40/bitmakerlabs.png', 'badges/cntower.png', 'badges/ROM.png', 'badges/AGO.png', 'badges/uoft.png']
riddles = ['Nine weeks of intensive coding happens inside, future devs are those who survive.', 'It takes 1776 stair to climb to the top, make sure to wear your sneakers or you may have to stop.', 'Ancient artifacts and dinosaurs abound, come and see the sights that astound.', "Get to know the Group of Seven, while roaming through this art lover's heaven.", 'A university known worldwide, come see the knowledge hidden inside.']

Riddle.create(name: locations[0][0], latitude: locations[0][1], longitude: locations[0][2], badge: badges[0], riddle: riddles[0])

sleep(2)

(1..4).each do |n|
	Riddle.create(name: locations[n][0], latitude: locations[n][1], longitude: locations[n][2], badge: badges[n], riddle: riddles[n])
end