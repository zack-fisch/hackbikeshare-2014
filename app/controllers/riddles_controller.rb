class RiddlesController < ApplicationController

	def index
		@riddles = Riddle.all
	end

	def show
		@riddle = Riddle.find(params[:id])
	end

	def check_in
		binding.pry
		@location = params['location']
		@riddle = Riddle.find(params[:id])
		redirect_to riddle_path(@riddle)
	end
end
