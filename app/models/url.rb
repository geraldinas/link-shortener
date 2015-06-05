class Url < ActiveRecord::Base
	validates :url, :presence => true	

	def url_extension

	end
end
