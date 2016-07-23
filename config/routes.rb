Rails.application.routes.draw do
  resources :users
  resources :rides
  root 'rides#index'
end