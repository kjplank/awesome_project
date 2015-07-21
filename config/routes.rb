Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  if Setting.last[:show_votes]
    root 'settings#results'
  else
    root 'settings#instructions'
  end

  get "/delete_image/:theme/:theme_id", :controller => "settings", :action => "delete_image"

# Routes for Voting:
  get "/cast_vote/:theme/:theme_id", :controller => "settings", :action => "cast_vote"
  get "/reset_votes", :controller => "settings", :action => "reset_votes"


  # Routes for the Setting resource:
  # CREATE
  get "/settings/new", :controller => "settings", :action => "new"
  post "/create_setting", :controller => "settings", :action => "create"

  # READ
  get "/settings", :controller => "settings", :action => "index"
  get "/settings/:id", :controller => "settings", :action => "show"

  # UPDATE
  get "/settings/:id/edit", :controller => "settings", :action => "edit"
  post "/update_settings", :controller => "settings", :action => "update"

  # DELETE
  get "/delete_setting/:id", :controller => "settings", :action => "destroy"
  #------------------------------

  # Routes for the Theme5 resource:
  # CREATE
  get "/theme5s/new", :controller => "theme5s", :action => "new"
  post "/create_theme5", :controller => "theme5s", :action => "create"

  # READ
  get "/theme5s", :controller => "theme5s", :action => "index"
  get "/theme5s/:id", :controller => "theme5s", :action => "show"

  # UPDATE
  get "/theme5s/:id/edit", :controller => "theme5s", :action => "edit"
  post "/update_theme5/:id", :controller => "theme5s", :action => "update"

  # DELETE
  get "/delete_theme5/:id", :controller => "theme5s", :action => "destroy"
  #------------------------------

  # Routes for the Theme4 resource:
  # CREATE
  get "/theme4s/new", :controller => "theme4s", :action => "new"
  post "/create_theme4", :controller => "theme4s", :action => "create"

  # READ
  get "/theme4s", :controller => "theme4s", :action => "index"
  get "/theme4s/:id", :controller => "theme4s", :action => "show"

  # UPDATE
  get "/theme4s/:id/edit", :controller => "theme4s", :action => "edit"
  post "/update_theme4/:id", :controller => "theme4s", :action => "update"

  # DELETE
  get "/delete_theme4/:id", :controller => "theme4s", :action => "destroy"
  #------------------------------

  # Routes for the Theme3 resource:
  # CREATE
  get "/theme3s/new", :controller => "theme3s", :action => "new"
  post "/create_theme3", :controller => "theme3s", :action => "create"

  # READ
  get "/theme3s", :controller => "theme3s", :action => "index"
  get "/theme3s/:id", :controller => "theme3s", :action => "show"

  # UPDATE
  get "/theme3s/:id/edit", :controller => "theme3s", :action => "edit"
  post "/update_theme3/:id", :controller => "theme3s", :action => "update"

  # DELETE
  get "/delete_theme3/:id", :controller => "theme3s", :action => "destroy"
  #------------------------------

  # Routes for the Theme2 resource:
  # CREATE
  get "/theme2s/new", :controller => "theme2s", :action => "new"
  post "/create_theme2", :controller => "theme2s", :action => "create"

  # READ
  get "/theme2s", :controller => "theme2s", :action => "index"
  get "/theme2s/:id", :controller => "theme2s", :action => "show"

  # UPDATE
  get "/theme2s/:id/edit", :controller => "theme2s", :action => "edit"
  post "/update_theme2/:id", :controller => "theme2s", :action => "update"

  # DELETE
  get "/delete_theme2/:id", :controller => "theme2s", :action => "destroy"
  #------------------------------

  # Routes for the Theme1 resource:
  # CREATE
  get "/theme1s/new", :controller => "theme1s", :action => "new"
  post "/create_theme1", :controller => "theme1s", :action => "create"

  # READ
  get "/theme1s", :controller => "theme1s", :action => "index"
  get "/theme1s/:id", :controller => "theme1s", :action => "show"

  # UPDATE
  get "/theme1s/:id/edit", :controller => "theme1s", :action => "edit"
  post "/update_theme1/:id", :controller => "theme1s", :action => "update"

  # DELETE
  get "/delete_theme1/:id", :controller => "theme1s", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
