Bidwars::Application.routes.draw do
  devise_for :competitions
  resources :bids
  resources :djs

  root to: 'site#index'
end
