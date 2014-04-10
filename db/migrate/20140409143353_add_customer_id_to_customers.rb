class AddCustomerIdToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :customer_id, :string
  end
end
