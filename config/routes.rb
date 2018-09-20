Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'
  root 'pages#home'

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'

  resources :brands
  resources :products
 	



end
