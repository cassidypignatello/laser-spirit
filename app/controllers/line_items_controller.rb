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

  def destroy
    line_item = LineItem.find(params[:item_id])
    line_item.destroy
    redirect_to shopping_cart_path(current_user)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id)
  end

end
