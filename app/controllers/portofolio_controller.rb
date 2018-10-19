class PortofolioController < ApplicationController
	def index
		@portofolio_items = Portofolio.all 
	end
end
