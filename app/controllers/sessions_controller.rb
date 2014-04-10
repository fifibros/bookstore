class SessionsController < ApplicationController
  def new
  end

  def create
	customer = Customer.find_by_email(params[:email]) 
	if customer && customer.authenticate(params[:password])	
		session[:customer_id] = customer.id
		redirect_to customer
	else
		flash.now[:error] = "Invalid e-mail / password combination."
		render 'new'
	end
  end	
 
 def destroy
	if signed_in?
		session[:customer_id] = nil
		session[:cart_id] = nil

	else
		flash[:notice] = "You need to sign in first"
	end
	redirect_to signin_path
 end

end
