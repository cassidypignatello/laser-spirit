class LineItemsController < ApplicationController
  
  def create
    #raise params.inspect
    product = Product.find(params[:product_id])
    current_user.shopping_cart.line_items.create(product: product)
    redirect_to shopping_cart_path
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :shopping_cart_id)
  end

end
