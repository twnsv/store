class CartsController < ApplicationController
	before_action :authenticate_user!, only: [:checkout]
	def clean
		current_cart.clean!
		flash[:notice] = "購物車已清空"
		redirect_to :back
	end

	def checkout
		@order = current_user.orders.build
		@info = @order.build_info
	end
end
