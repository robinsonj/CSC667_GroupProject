CSC667Groupproject::Application.routes.draw do
  get "profile/createprofile"
  get "profile/editprofile"
  get "profile/viewprofile"

  get "pages/home"
  get "pages/aboutus"  
  get "pages/confirmation"
  get "pages/deleteconfirm"
  get "pages/editconfirm"

  get "events/eventslist"
  get "events/show(/:id)" => "events#show"
  get "events/new"
  get "events/create" #for debug
  post "events/create"
  get "events/edit(/:id)" => "events#edit"
  post "events/edit(/:id)" => "events#edit"
  post "events/update"
  delete "events/destroy(/:id)" => "events#destroy"

 
  get "donations/new"
  get "donations/donationlist"
  get "donations/show(/:id)" => "donations#show"
  get "donations/create" #for debug
  post "donations/create"
  get "donations/edit(/:id)" => "donations#edit"
  post "donations/edit(/:id)" => "donations#edit"
  post "donations/update"
  delete "donations/destroy(/:id)" => "donations#destroy"

  resources :donations
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

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
