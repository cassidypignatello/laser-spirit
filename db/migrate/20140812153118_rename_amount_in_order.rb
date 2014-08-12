class RenameAmountInOrder < ActiveRecord::Migration
  def change
    rename_column :orders, :amount, :order_amount 
  end
end
