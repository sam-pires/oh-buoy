Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :buoys do
    resources :photos, only: [:new, :create, :destroy]
    resources :bookings, only: [:new, :create, :destroy] do
      resources :reviews, only: [:new, :create]
    end
  end

  resources :users, only: [:show] do
    resources :photos, only: [:new, :create, :destroy]
  end

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
