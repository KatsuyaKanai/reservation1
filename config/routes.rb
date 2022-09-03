Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root "homes#index"
    get 'homes/index'

    get '/users/sign_out' => 'devise/sessions#destoroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  resource :users do
    get 'profile'
    get 'account'
    post 'profile'
  end
end

 