class Product < ActiveRecord::Base
  
  belongs_to :seller, :class_name => "User" 
  has_many :line_items
  has_many :shopping_carts, through: :line_items
  mount_uploader :image, ImageUploader

  validates :title, :description, presence: true

  searchable do
    text :title, :boost => 5
    text :description
    integer :price
  end

end


