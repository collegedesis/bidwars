Bidwars::Application.routes.draw do
  
  match "/about", to: 'pages#about'

  devise_for :competitions
  resources :bids
  resources :djs
  resources :votes, only: [:create]
  root to: 'bids#index'
end
