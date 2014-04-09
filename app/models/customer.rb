class Customer < ActiveRecord::Base
	has_many :orders

	validates_presence_of :email, :name
	
	def self.authenticate(name, email)
		customer = find_by_name(name)
		return nil  if customer.nil?
		return customer if customer.email == email
		return nil
	end  	  
end