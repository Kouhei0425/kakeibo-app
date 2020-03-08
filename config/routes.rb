Rails.application.routes.draw do
  devise_for :users
  root "things#new"
  resources :things, only: [:new, :create, :edit, :update,:destroy]
  resources :users, only: [:edit, :update, :show]
end
