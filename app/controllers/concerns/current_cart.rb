module CurrentCart
  extend ActiveSupport::Concern

  private

  def set_shopping_cart 
    @shopping_cart = ShoppingCart.find(session[:shopping_cart_id])
  rescue ActiveRecord::RecordNotFound
    @shopping_cart = ShoppingCart.create
    session[:shopping_cart_id] = @shopping_cart.id
  end
end