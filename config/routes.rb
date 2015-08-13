Rails.application.routes.draw do
  # get 'shirt_types/index'

  # get 'print_methods/index'

  # get 'customers/index'
  #
  get 'quotations/show_price/:shirtid/:fitid/:methodid/:sizeid/:quantity/:noblock' => 'quotations#show_price'
  get 'quotations/show_cost/:shirtid/:fitid/:methodid/:sizeid/:quantity/:noblock' => 'quotations#show_cost'

  get 'fits/show'

  # get 'brands/index'

  resources :quotations
  resources :brands
  resources :shirt_types
  resources :customers
  resources :print_methods

  #get 'home/index'
  root 'home#index'

  devise_for :apparel_consultants
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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
