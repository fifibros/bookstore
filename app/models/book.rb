class Book < ActiveRecord::Base

	has_many :lineitems
	has_many :orders, :through => :lineitems
	has_many :comments, :dependent => :destroy

	mount_uploader :image, ImageUploader
	
 def self.search_by_title(title)
   search_condition = title + "%"
   find(:all, :conditions => ['title LIKE  ?', search_condition])
 end
 
  def self.search_by_author(author)
   search_condition = author + "%"
   find(:all, :conditions => ['author LIKE  ?', search_condition])
 end
 
   def self.search_by_category(category)
   search_condition = category + "%"
   find(:all, :conditions => ['category LIKE  ?', search_condition])
 end

end