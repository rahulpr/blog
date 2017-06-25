class PagesController < ApplicationController

	def about
		@title = 'About Us'
		@content = 'About page contents here.'
	end

end
