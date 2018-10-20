class PortofoliosController < ApplicationController
	def index
		@portfolio_items = Portofolio.all
	end
  def show 
    @portofolio_item = Portofolio.find(params[:id])
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
  def edit
    @portfolio_item = Portofolio.find(params[:id])
  end

  def update(item)
    @portfolio_item = Portofolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(params.require(:portofolio).permit(:title, :body))
        format.html { redirect_to @portfolio_item, notice: 'Portfolio was updated created.' }
      else
        format.html { render :edit }
      end
    end
  end 
end
