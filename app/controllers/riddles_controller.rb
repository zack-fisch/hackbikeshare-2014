class RiddlesController < ApplicationController

	def index
		@riddles = Riddle.all
	end

	def show
		@riddle = Riddle.find(params[:id])
	end

	def create
	end

	def check_in
		@location = params['location']
		@riddle = Riddle.find(params[:id])
		@coords = [@riddle.latitude, @riddle.longitude]
		@distance = Geocoder::Calculations.distance_between(@coords, @location, units: :km)
	end
end
