class CartItemsController < ApplicationController
	def destroy
		@cart = current_cart
		@item = @cart.cart_items.find_by(product_id: params[:id])
		@product = @item.product
		@item.destroy

		flash[:notice] = "成功將商品 #{@product.title} 從購物車刪除"
		redirect_to :back
	end
end
