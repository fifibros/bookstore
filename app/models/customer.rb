class Customer < ActiveRecord::Base
	has_many :orders
	
	validates_presence_of :name, :email

	validates_presence_of :password
	validates_confirmation_of :password
	
	has_secure_password
	
	def self.authenticate(email, password)
		customer = find_by_email(email)
		return nil  if customer.nil?
		return customer if customer.password == password
		return nil
	end  	  
end