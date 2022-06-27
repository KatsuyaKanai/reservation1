Rails.application.routes.draw do

  
  devise_for :users
  root to: 'homes#index'
  get 'homes/index', to: 'homes#index'
  get 'users/:id', to: 'users#new', as: 'profile'
  get  'show/:id', to: 'users#show', as: 'account'
  post 'users/:id', to: 'users#new'
  get 'rooms/new'
  post 'rooms/new', to: 'rooms#create'
  get 'rooms/:id', to: 'rooms#show'
  #get 'rooms/create'
  post 'rooms/:id', to: 'rooms#update'
  post 'reservation/new', to: 'reservation#create'

  resources :users
  resources :rooms
  resources :reservation
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  