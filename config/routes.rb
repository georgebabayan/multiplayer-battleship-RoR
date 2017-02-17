Rails.application.routes.draw do

  resources :users
  resources :games
  resources :messages



  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#delete', as: 'logout'

  root 'static#homepage'
end
