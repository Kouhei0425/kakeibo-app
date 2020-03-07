Rails.application.routes.draw do
  devise_for :users
  root "things#index"
  resources :things, only: [:new, :create]
  resources :users, only: [:edit, :update]
end
