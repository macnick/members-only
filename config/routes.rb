Rails.application.routes.draw do
  
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  get 'sessions/new'
  get 'users/new'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
