class Riddle < ActiveRecord::Base
	has_many :badges

	geocoded_by :get_address
	before_save :geocode

	def get_address
		self.address
	end

end
