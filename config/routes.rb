Bidwars::Application.routes.draw do
  
  match "/about", to: 'pages#about'
  match "/sponsors", to: 'pages#sponsors'

  devise_for :competitions
  resources :bids
  resources :djs
  resources :votes, only: [:create]
  root to: 'djs#index'
end
