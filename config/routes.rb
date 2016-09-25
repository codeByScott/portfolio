Rails.application.routes.draw do
  
  get 'about', to: 'static#about', as: 'about'
  get 'contact', to: 'static#contact', as: 'contact'

  resources :articles
  resources :projects
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
