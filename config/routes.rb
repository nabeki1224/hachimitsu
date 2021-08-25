Rails.application.routes.draw do
  devise_for :users
  root to: "home#top"
  resources :users, only: [:index, :show]
  resources :mitsus, only: [:index, :show, :new, :destroy, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
