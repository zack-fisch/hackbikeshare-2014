class RiddlesController < ApplicationController

	def index
		@riddles = Riddle.all
	end

	def show
		@riddle = Riddle.find(params[:id])
	end

	def check_in
		@riddle = Riddle.find(params[:id])
	end
end
