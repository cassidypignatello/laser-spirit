class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :product, index: true
      t.references :shopping_cart, index: true

      t.timestamps
    end
  end
end
