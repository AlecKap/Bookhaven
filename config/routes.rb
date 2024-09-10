Rails.application.routes.draw do
  devise_for :users
  
  root to: "welcome#index"

  get 'about/index', to: 'about#index', as: 'about'

  resources :books, only: [:show, :index, :new, :create]
  resources :libraries, only: [:index, :show, :new, :create]
end
