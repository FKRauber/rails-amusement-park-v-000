Rails.application.routes.draw do
  resources :users
  resources :attractions

  root "static_pages#home"
  get "/signin", to: "sessions#new"
  post "/signin", to: 'sessions#create'
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
  post "/rides/new", to: "rides#new"
end
