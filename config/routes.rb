Rails.application.routes.draw do

  resources :users

  get '/sessions/new', to: 'sessions#new', as: 'login'
  post '/sessions/create', to: 'sessions#create'
  get '/sessions/delete', to: 'sessions#destroy', as: 'logout'

  root 'static#homepage'
end
