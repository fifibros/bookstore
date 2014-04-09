class ShopController < ApplicationController
  def index
	@products = Product.order("title asc").all
	#@products = Product.cheaper_than(20)
	#@products = Product.find(:all, :conditions => ['price < 5']
	#@products = Product.find_by_title("Rails Book")
	#@products = Product.find_by_sql("SELECT * from Products WHERE price < 20 AND genre_id = 3")
	#@products = Product.find_by_sql("SELECT TOP 2 price from Product")
	#@products = Product.where(['genre IN ("Horror")', genres]).all
  end

end