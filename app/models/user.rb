class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :shopping_cart, :foreign_key => :buyer_id
  has_many :purchases, through: :shopping_cart, source: :products
  has_many :products_for_sale, :foreign_key => :seller_id, :class_name => "Product"
  before_create :set_shopping_cart

  private

  def set_shopping_cart 
    self.shopping_cart = ShoppingCart.create
  end

end
