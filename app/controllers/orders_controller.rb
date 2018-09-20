class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def new
		@order = current_cart.order
		@order.name = current_user.name
		@order.email = current_user.email
	end

	def create
		@order = current_cart.order

		if @order.update(order_params)
			session[:cart_token] = nil
			redirect_to root_path
		else
			redirect_to 'new'
		end	
	end

	private

		def order_params
			params.require(:order).permit(:name, :street, :door, :city, :zipcode, :phone, :order_icon, :order_msg, :email)			
		end

end
