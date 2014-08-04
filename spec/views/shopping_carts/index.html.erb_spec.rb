require 'rails_helper'

RSpec.describe "shopping_carts/index", :type => :view do
  before(:each) do
    assign(:shopping_carts, [
      ShoppingCart.create!(
        :line_item => nil,
        :buyer_id => 1
      ),
      ShoppingCart.create!(
        :line_item => nil,
        :buyer_id => 1
      )
    ])
  end

  it "renders a list of shopping_carts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
