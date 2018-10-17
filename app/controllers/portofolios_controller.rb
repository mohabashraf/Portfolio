class PortofoliosController < ApplicationController
	def index
		@portfolios_items = Portofolio.all
		puts @portfolios_items 
	end
end
