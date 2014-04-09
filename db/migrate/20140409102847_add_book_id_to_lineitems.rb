class AddBookIdToLineitems < ActiveRecord::Migration
  def change
    add_column :lineitems, :book_id, :string
  end
end
