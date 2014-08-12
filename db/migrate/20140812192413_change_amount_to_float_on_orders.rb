class ChangeAmountToFloatOnOrders < ActiveRecord::Migration
  def change
    change_column :orders, :order_amount, :float
  end
end
