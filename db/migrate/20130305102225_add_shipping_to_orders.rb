class AddShippingToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipping, :boolean
  end
end
