class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

   def new
    if current_user.shopping_cart.line_items.empty?
      redirect_to root_path, notice: "Your cart is empty"
      return
    end

    @order = Order.new
  end

  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    # Amount in cents
    # @order = Order.new
    @amount = 0
    current_user.shopping_cart.line_items.each do |line|
      #binding.pry
      #@order.name = current_user.name
      #@order.email = current_user.email
      @amount += line.product.price * line.quantity
    end
    

    @amount = @amount*100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )
    @order = Order.new

    @order.save
    @order.id
    @order.amount = 0
    current_user.shopping_cart.line_items.each do |line|
      @order.name = current_user.name
      @order.email = current_user.email
      @order.amount += line.product.price * line.quantity
      line.order_id = @order.id
      line.shopping_cart_id = nil
      line.save
    end
    @order.save
    redirect_to root_path
    # At this point we need to make an Order.new We can get the info we need from current_user.
    # ex. 
      # current_user.shopping_cart.line_items.last.product.title => "Title"
      # current_user.shopping_cart.line_items.last.quantity => "2"

    # Really this should be in the Orders controller not charge so I'll try to get it there.

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end
end
