class RiddlesController < ApplicationController
	before_filter :require_login

	def index
		@riddles = Riddle.select do |riddle|
			!current_user.badges.pluck(:riddle_id).include?(riddle.id)
		end
		@riddle = @riddles.first
	end

	def show
		@riddle = Riddle.find(params[:id])
	end

	def create
	end

	def check_in
		@riddles = Riddle.all
		@location = params['location']
		@riddle = Riddle.find(params[:id])
		@coords = [@riddle.latitude, @riddle.longitude]
		@distance = Geocoder::Calculations.distance_between(@coords, @location, units: :km)
		if @distance < 0.2
			Badge.create(user_id: current_user.id, riddle_id: @riddle.id)
		end
	end
end
