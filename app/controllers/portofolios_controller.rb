class PortofoliosController < ApplicationController
	def index
		@portfolio_items = Portofolio.all
	end
	def new
		@portfolio_item = Portofolio.new 
	end
	def create
		portfolio_params = params.require(:portofolio).permit(:title, :body)
    @portfolio_item = Portofolio.new(portfolio_params)
    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
end
