Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'

  resources :posts, only: [:show] do
    resources :comments, only: [:create]
  end

  resources :users, only: [:show] do
    resources :comments, only: [:create]
  end
end
