Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "omniauth_callbacks",
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }  
  root to: "home#top"
  get '/about', to: "home#about"
  resources :users, only: [:index, :show]
  resources :mitsus, only: [:index, :show, :new, :destroy, :create] do
    resources :goods, only: [:create]
    resources :bads, only: [:create]
  end
  get '/mitsus/:level/level', to: 'mitsus#index', as: 'level_mitsus'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
