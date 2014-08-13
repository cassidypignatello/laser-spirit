class LineItemsController < ApplicationController

  def index
    redirect_to new_user_session_path
  end

  def new
    redirect_to new_user_session_path
  end

  def show
    redirect_to new_user_session_path
  end

  def create
    product = Product.find(params[:product_id])
    @line_item = current_user.shopping_cart.add_product(product.id)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to products_path,
          notice: 'Line item was successfully created.' }
        format.js
        format.json { render action: 'show',
          status: :created, location: @line_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_item.errors,
          status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    line_item = LineItem.find(params[:item_id])
    line_item.destroy
    redirect_to shopping_cart_path(current_user)
  end

  def update
    @line_item = LineItem.find(params[:id])
    @line_item.update(quantity: params[:line_item][:quantity])
    redirect_to shopping_cart_path(current_user)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :quantity)
  end

end


