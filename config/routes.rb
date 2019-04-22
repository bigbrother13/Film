Rails.application.routes.draw do
  resources :movies, only: %i(index)

  root 'movies#index'
end
