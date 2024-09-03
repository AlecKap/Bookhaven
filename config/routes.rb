Rails.application.routes.draw do
  devise_for :users
  
  root to: "welcome#index"

  get 'about/index', to: 'about#index', as: 'about'

  resources :books, only: [:show, :index]
  resources :libraries, only: [:index]
end
