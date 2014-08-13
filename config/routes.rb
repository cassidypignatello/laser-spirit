Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  resources :orders

  resources :shopping_carts

  resources :categories

  resources :products

  resources :line_items

  post 'line_items/update'

  post '/add_to_cart/:product_id' => 'shopping_carts#add_to_cart', :as => 'add_to_cart'

  get '/checkout', to: 'shopping_carts#checkout'

  devise_for :users, skip: [:sessions, :passwords, :confirmations, :registrations]
    as :user do
      # session handling
      get '/login' => 'devise/sessions#new', as: :new_user_session
      post '/login' => 'devise/sessions#create', as: :user_session
      delete '/logout' => 'devise/sessions#destroy', as: :destroy_user_session

      # signing up
      get '/signup' => 'devise/registrations#new', as: 'new_user_registration'
      post '/signup' => 'devise/registrations#create', as: 'user_registration'

      scope '/account' do
        # password reset
        get '/reset-password' => 'devise/passwords#new', as: 'new_user_password'
        patch '/reset-password' => 'devise/passwords#update', as: 'user_password'
        post '/reset-password' => 'devise/passwords#create'
        get '/reset-password/change' => 'devise/passwords#edit', as: 'edit_user_password'

        # confirmation
        get '/confirm' => 'devise/confirmations#show', as: 'user_confirmation'
        post '/confirm' => 'devise/confirmations#create'
        get '/confirm/resend' => 'devise/confirmations#new', as: 'new_user_confirmation'

        # settings & cancellation
        get '/cancel' => 'devise/registrations#cancel', as: 'cancel_user_registration'
        get '/settings' => 'devise/registrations#edit', as: 'edit_user_registration'
        patch '/settings' => 'devise/registrations#update'

        # account deletion
        delete '' => 'devise/registrations#destroy'
      end
    end
  
end
