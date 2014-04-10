Bookstore::Application.routes.draw do

  resources :comments

  resources :books

  resources :carts

  resources :orders

  resources :lineitems
  
  resources :sessions
  
  resources :customers
	   
  get "shop/index"
  
  get "sessions/new"
  
  get "pages/home"
  
  resources :books do
	resources :comments
  end

  
   match '/signin',  :to => 'sessions#new'
   match '/signout', :to => 'sessions#destroy'
   match '/customer_orders', :to => 'orders#customerorders'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'books/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'books/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :books

  # Sample resource route with options:
  #   resources :books do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :books do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :books do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/books/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :books
  #   end

  # You can have the root of your site routed with "root"
  root :to => 'shop#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
