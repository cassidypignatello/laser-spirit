class Product < ActiveRecord::Base
  belongs_to :seller, :class_name => "User" 
  has_many :line_items
  has_many :shopping_carts, through: :line_items
  mount_uploader :image, ImageUploader


  # def add_to_cart
  #   if current_user 
  #     binding.pry
  #   else
  #     redirect new_user_session_path
  #   end
  # end

end



