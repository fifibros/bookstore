class SessionsController < ApplicationController
  def new
  end

  def create 
   customer = Customer.authenticate(params[:session][:name], params[:session][:email])    
   if customer.nil?
      flash.now[:error] = "Invalid name/password combination."      
      render 'new'			
    else 
 	   session[:customer_id] = customer.id		
       redirect_to session[:return_to] || root_path			
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
