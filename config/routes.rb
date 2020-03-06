Rails.application.routes.draw do
  devise_for :users
  root "things#index"
  resources :things, only: [:index, :new]
  resources :users, only: [:edit, :update]
end
