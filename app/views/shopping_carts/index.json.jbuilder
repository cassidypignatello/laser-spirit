json.array!(@shopping_carts) do |shopping_cart|
  json.extract! shopping_cart, :id, :line_item_id, :buyer_id
  json.url shopping_cart_url(shopping_cart, format: :json)
end
