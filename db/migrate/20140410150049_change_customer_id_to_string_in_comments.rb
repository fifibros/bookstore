class ChangeCustomerIdToStringInComments < ActiveRecord::Migration

  def up
   change_column :comments, :customer_id, :string
  end

  def down
   change_column :comments, :customer_id, :integer
  end
end