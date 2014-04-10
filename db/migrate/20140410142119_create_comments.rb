class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :customer_id
      t.integer :book_id
      t.string :rating

      t.timestamps
    end
  end
end
