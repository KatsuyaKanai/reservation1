Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#index'
  get '/homes/index', to: 'homes#index'
  get '/users/:id', to: 'users#new', as: 'profile'
  get '/show/:id', to: 'users#show', as: 'account'
  post '/users/:id', to: 'users#new'
  post '/rooms/new', to: 'rooms#create'
  resources :users, :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  