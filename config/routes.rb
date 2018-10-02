Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'
  root 'pages#home'
  get '/store', to: 'pages#store'
  get '/working', to: 'pages#working'

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  get '/cart/checkout', to: 'orders#new', as: :checkout
  patch '/cart/checkout', to: 'orders#create'

  get '/dashboard', to: 'orders#index', as: :dashboard

  resources :brands
  resources :products
 	resources :custom_orders

  resources :conversations do
    resources :messages
  end

end
