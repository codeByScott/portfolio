Rails.application.routes.draw do
  
  get 'users/new'

  get 'about', to: 'static#about', as: 'about'

  resources :articles
  resources :projects
  resources :contacts, only: [:new, :create]
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
