class ShoppingCart < ActiveRecord::Base
  belongs_to :buyer, class_name: "User"
  has_many :line_items, dependent: :destroy
  has_many :products, through: :line_items 

  def add_product(product_id)
    #binding.pry
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end


end


