Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'landings#show', id: 1

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get '/about' => 'landings#show', id: 2
  get '/team' => 'landings#show', id: 3

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  get 'talks' => 'talks#index'
  get 'talks/:slug' => 'talks#show', as: 'talk'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # resources :landings
  resources :speakers
  resources :talks
  resources :articles
  resources :users

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')

  get 'signout', to: 'sessions#destroy', as: 'signout'
  # get '/talks/:id(.:format)' =>'talks#show', as: 'talk'

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
