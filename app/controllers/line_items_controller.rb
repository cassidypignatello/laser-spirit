class LineItemsController < ApplicationController
  
  def create
    product = Product.find(params[:product_id])
    cart = current_user.shopping_cart
    LineItem.create(
      :shopping_cart_id => cart.id, 
      :product_id => product.id
    )
    redirect_to shopping_cart_path(cart)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id)
  end

end
