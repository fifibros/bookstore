class DropProductIdFromLineitems < ActiveRecord::Migration
  def change
  remove_column :lineitems, :product_id
  end

end