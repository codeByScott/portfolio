Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'welcome#index'
  get 'sessions/new'
  get 'users/new'
  get '/about', to: 'static#about', as: 'about'
  resources :articles
  resources :projects
  resources :contacts, only: [:new, :create]
  get      '/register',  to: 'users#new'
  get      '/login',   to: 'sessions#new'
  post     '/login',   to: 'sessions#create'
  delete   '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end