require 'rails_helper'

RSpec.describe "shopping_carts/new", :type => :view do
  before(:each) do
    assign(:shopping_cart, ShoppingCart.new(
      :line_item => nil,
      :buyer_id => 1
    ))
  end

  it "renders new shopping_cart form" do
    render

    assert_select "form[action=?][method=?]", shopping_carts_path, "post" do

      assert_select "input#shopping_cart_line_item_id[name=?]", "shopping_cart[line_item_id]"

      assert_select "input#shopping_cart_buyer_id[name=?]", "shopping_cart[buyer_id]"
    end
  end
end
