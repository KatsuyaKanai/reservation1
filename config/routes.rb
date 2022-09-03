Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/session#new"
    get "logout", :to => "users/sessions#destroy"
  end
  
  root to: 'homes#index'
  get 'homes/index', to: 'homes#index'
  get 'users/:id', to: 'users#new', as: 'profile'
  get  'show/:id', to: 'users#show', as: 'account'
  post 'users/:id', to: 'users#new'
  get 'rooms/new'
  post 'rooms/new', to: 'rooms#create'
  get 'rooms/:id', to: 'rooms#show'
  post 'rooms/:id', to: 'rooms#update'
  post 'reservation/new', to: 'reservation#create'
  get 'search', to: 'rooms#search'
  post 'users/sign_in', to: 'homes#index'

  resources :users
  resources :rooms
  resources :reservation
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  