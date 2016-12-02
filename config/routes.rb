Rails.application.routes.draw do
  root 'welcome#index'
  get      '/register',  to: 'users#new'
  get      '/login',   to: 'sessions#new'
  post     '/login',   to: 'sessions#create'
  delete   '/logout',  to: 'sessions#destroy'

  get '/about', to: 'static#about', as: 'about'
  
  resources :users
  resources :articles
  resources :projects
  resources :contacts, only: [:new, :create]
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  get 'password_resets/new'
  get 'password_resets/edit'
end