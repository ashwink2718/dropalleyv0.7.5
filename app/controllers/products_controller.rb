class ProductsController < ApplicationController
	before_action :set_product, only: [:show, :edit, :update, :destroy]

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
    @product = Product.new(product_params)
	  @product.save
  end

  def show
  end
	
	private
		
    def set_product
      @product = Product.find(params[:id])  
    end	


		def product_params
	      params.require(:product).permit(:title, :description, :brand, :color, :size, :main_img, :img1, :img2, :img3, :img4, :img5)
	  end

end


