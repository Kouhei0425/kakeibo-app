Rails.application.routes.draw do
  root "things#index"
  get 'things', to: 'things#new'
end
