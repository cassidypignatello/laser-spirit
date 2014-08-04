class LineItemsController < ApplicationController

  def create
    raise params.inspect
    @line_item = LineItem.new(line_item_params)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :shopping_cart_id)
  end

end
