# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#home'
  resources :sessions, only: %i[new create destroy]
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  # get 'sessions/new'
  get 'users/new'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users

  resources :posts, only: %i[new create index]
  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
