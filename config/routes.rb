Rails.application.routes.draw do
  root 'movies#index'
  resources :searches
  resources :games, only: :index
end
