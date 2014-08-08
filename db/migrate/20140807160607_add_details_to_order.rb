class AddDetailsToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :address2, :string
    add_column :orders, :city, :string
    add_column :orders, :state, :string
    add_column :orders, :postal_code, :string
    add_column :orders, :amount, :integer
  end
end
