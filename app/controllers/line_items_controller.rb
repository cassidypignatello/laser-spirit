class LineItemsController < ApplicationController
  include CurrentCart

  before_action :set_shopping_cart, only: :create
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

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
