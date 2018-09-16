class BrandsController < ApplicationController
	def index
		@brands = Brand.all
	end

	def create
    @brand = Brand.new(brand_params)
	  @brand.save
  end
	
	private
		def brand_params
	      params.require(:brand).permit(:name, :image)
	  end

end
