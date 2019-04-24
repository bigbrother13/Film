Rails.application.routes.draw do
  root 'movies#index'
  resources :searches
end
