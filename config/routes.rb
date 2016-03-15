Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'

  resources :posts, only: [:show]
  resources :comments, only: [:create]
end
