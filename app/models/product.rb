class Product < ActiveRecord::Base
  belongs_to :seller, :class_name => "User" 
  has_many :line_items
  has_many :shopping_carts, through: :line_items


  before_destroy :check_for_carts
  private

  def check_for_carts
    if line_items.empty?
      return true
    else
      errors.add(:base, 'This product is is currently being purchased by a buyer!')
      return false
    end
  end
end



