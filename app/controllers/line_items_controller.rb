class LineItemsController < ApplicationController


  def create
    product = Product.find(params[:product_id])
    @line_item = current_user.shopping_cart.add_product(product.id)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.shopping_cart,
          notice: 'Line item was successfully created.' }
        format.json { render action: 'show',
          status: :created, location: @line_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @line_item.errors,
          status: :unprocessable_entity }
      end
    end
  end
  
  # def create
  #   cart = current_user.shopping_cart
  #   @line_item = cart.add_product(params[:product_id])
  #    LineItem.create(
  #      :shopping_cart_id => cart.id, 
  #      :product_id => product.id
  #    )
  #   redirect_to shopping_cart_path(cart)
  # end


  def destroy
    
    line_item = LineItem.find(params[:item_id])
    line_item.destroy
    redirect_to shopping_cart_path(current_user)
  end

  private

  def line_item_params
    params.require(:line_item).permit(:product_id, :quantity)
  end

end


