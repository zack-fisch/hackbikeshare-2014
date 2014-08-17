class RiddlesController < ApplicationController

	def index
		@riddles = Riddle.all
	end

	def show
		@riddle = Riddle.find(params[:id])
	end

	def check_in
		@location = params['location']
		@coords = [36.94159, -82.473447]
		@riddle = Riddle.find(params[:id])
		@distance = Geocoder::Calculations.distance_between(@coords, @location, units: :km)
		redirect_to riddle_path(@riddle)
	end
end
