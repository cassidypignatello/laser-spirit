Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users, :controllers => {registrations: 'registrations'}
  
  ActiveAdmin.routes(self)
 
  match 'remote_sign_up', to: 'remote_content#remote_sign_up', via: [:get]
  
  get 'home/index'

  resources :orders

  get 'profile/index'

  get 'profile/show'

  resources :shopping_carts

  resources :categories

  resources :products

  resources :line_items

  post 'line_items/update'

  resources :charges

  post '/add_to_cart/:product_id' => 'shopping_carts#add_to_cart', :as => 'add_to_cart'

  get '/checkout', to: 'shopping_carts#checkout'

  devise_for :users, skip: [:sessions, :passwords, :confirmations, :registrations]
    as :user do
      # session handling
      # get '/login' => 'devise/sessions#new', as: :new_user_session
      #post '/login' => 'devise/sessions#create', as: :user_session
      #delete '/logout' => 'devise/sessions#destroy', as: :destroy_user_session

      # signing up
      #get '/signup' => 'devise/registrations#new', as: 'new_user_registration'
      #post '/signup' => 'devise/registrations#create', as: 'user_registration'

      scope '/account' do
        # password reset
        #get '/reset-password' => 'devise/passwords#new', as: 'new_user_password'
        #patch '/reset-password' => 'devise/passwords#update', as: 'user_password'
        #post '/reset-password' => 'devise/passwords#create'
        #get '/reset-password/change' => 'devise/passwords#edit', as: 'edit_user_password'

        # confirmation
        #get '/confirm' => 'devise/confirmations#show', as: 'user_confirmation'
        #post '/confirm' => 'devise/confirmations#create'
        #get '/confirm/resend' => 'devise/confirmations#new', as: 'new_user_confirmation'

        # settings & cancellation
        #get '/cancel' => 'devise/registrations#cancel', as: 'cancel_user_registration'
        #get '/settings' => 'devise/registrations#edit', as: 'edit_user_registration'
        #patch '/settings' => 'devise/registrations#update'

        # account deletion
        #delete '' => 'devise/registrations#destroy'
      end
    end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
