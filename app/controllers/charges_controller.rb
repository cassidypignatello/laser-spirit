# class ChargesController < ApplicationController

#   def new
#   end

#   def create
#     # Amount in cents
#     @order_amount = 500

#     customer = Stripe::Customer.create(
#       :email => 'example@stripe.com',
#       :card  => params[:stripeToken]
#     )

#     charge = Stripe::Charge.create(
#       :customer    => customer.id,
#       :order_amount      => @order_amount,
#       :description => 'Rails Stripe customer',
#       :currency    => 'usd'
#     )
#     # At this point we need to make an Order.new We can get the info we need from current_user.
#     # ex. 
#       # current_user.shopping_cart.line_items.last.product.title => "Title"
#       # current_user.shopping_cart.line_items.last.quantity => "2"

#     # Really this should be in the Orders controller not charge so I'll try to get it there.

#   rescue Stripe::CardError => e
#     flash[:error] = e.message
#     redirect_to charges_path
#   end


# end
