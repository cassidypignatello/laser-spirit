class ShoppingCart < ActiveRecord::Base
  belongs_to :buyer class_name: "User"
  has_many: line_items, dependent: :destroy 
end
