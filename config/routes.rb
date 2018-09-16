Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'
  root 'pages#home'



  resources :brands
 	



end
