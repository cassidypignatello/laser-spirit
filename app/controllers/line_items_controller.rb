class LineItemsController < ApplicationController
  include CurrentCart

  before_action :set_shopping_cart, only: :create
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]

  def create
    #raise params.inspect
    product = Product.find(params[:product_id])
    @line_item = @shopping_cart.line_items.build(product: product)
    redirect_to shopping_cart_path
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :shopping_cart_id)
  end

end
