class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :shopping_cart, :foreign_key => :buyer_id
  before_create :set_shopping_cart

  private

  def set_shopping_cart 
    self.shopping_cart = ShoppingCart.create
  end

end
