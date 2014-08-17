class Riddle < ActiveRecord::Base

	geocoded_by :get_address
	before_save :geocode

	def get_address
		self.address
	end

end
