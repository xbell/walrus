Rails.application.routes.draw do

  get "/sections/:id", to: "sections#show", as: :section
  get "/sections", to: "sections#index", as: :sections
  get "/", to: "sections#index"
  post "/sections", to: "sections#create"
  post "/sections/:id", to: "menu_item#create"
  get "/sections/edit/:id", to: "sections#edit", as: :edit
  post "/sections/edit/:id", to: "sections#update"
  delete "/sections/:id", to: "sections#delete", as: :delete
  get "/menu-items/edit/:id", to: "menu_item#edit", as: :edit_item
  post "/menu-items/edit/:id", to: "menu_item#update"
  get "/menu-items/:id", to: "menu_item#delete", as: :delete_item

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
