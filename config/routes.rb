Bidwars::Application.routes.draw do
  devise_for :competitions
  resources :bids
  resources :djs
  resources :votes, only: [:create]
  root to: 'djs#index'
end
