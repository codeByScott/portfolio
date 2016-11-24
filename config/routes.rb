Rails.application.routes.draw do
  root 'welcome#index'
  get 'sessions/new'
  get 'users/new'
  get '/about', to: 'static#about', as: 'about'
  resources :articles
  resources :projects
  resources :contacts, only: [:new, :create]
  get      '/signup',  to: 'users#new'
  get      '/login',   to: 'sessions#new'
  post     '/login',   to: 'sessions#create'
  delete   '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end