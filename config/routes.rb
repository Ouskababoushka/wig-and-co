Rails.application.routes.draw do
  devise_for :users
  root to: 'wigs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :wigs, only: [:new, :create, :show, :index , :destroy ]  do
    resources :requests, only: [:create]
  end

  resources :requests, only: [:show] do
    member do
      patch :decline
      patch :accept
      patch :cancel
    end
  end
end
