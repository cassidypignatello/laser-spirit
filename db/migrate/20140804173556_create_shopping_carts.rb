class CreateShoppingCarts < ActiveRecord::Migration
  def change
    create_table :shopping_carts do |t|
      t.references :line_item, index: true
      t.integer :buyer_id

      t.timestamps
    end
  end
end
