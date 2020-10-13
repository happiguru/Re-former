Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/index'
  get 'new', to: 'users#new'
  
  # get 'users/new',  to: 'users#new'
  # get 'users', to: 'users#create'
  get 'signup', to: 'users#new' 
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  root 'users#index'

end
