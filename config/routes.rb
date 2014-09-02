Rails.application.routes.draw do
 

  get 'people/index'

  get 'people/new'

  get 'people/show'

  get 'people/edit'

  get 'people/delete'

  get 'subjects/index'

  get 'subjects/show'

  get 'subjects/new'

  get 'subjects/edit'

  get 'subjects/delete'

  get 'aboutus', to: 'page#about_us'

  get 'products', to: 'page#product'

  get 'newsletter', to: 'page#newsletter'

  get 'blog', to: 'page#blog'

  get 'calender', to: 'page#calender'

  get 'articles', to: 'page#articles'

  get 'login', to:'page#login'

  root 'static_page#home'
  get 'home', to: 'static_page#home'

  get 'help', to: 'static_page#help'

  get 'contact', to: 'static_page#contact'
   post 'contact', to: 'static_page#contact'


match ':controller(/:action (/:id))', :via=>[:get, :post]


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
