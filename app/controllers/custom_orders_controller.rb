class CustomOrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @custom_order = CustomOrder.new
    @custom_order.email = current_user.email
  end

  def create
    @custom_order = CustomOrder.new(order_params)
    if @custom_order.save
      flash[:success] = "Order has been placed."
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private
    def order_params
      params.require(:custom_order).permit(:name, :email, :street, :door, :city, :zipcode, :product1, :size1, :product2, :size2, :product3, :size3, :product4, :size4, :product5, :size5, :comment, :phone)
    end
end