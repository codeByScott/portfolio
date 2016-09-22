Rails.application.routes.draw do
  
  get 'static/about'
  get 'static/contact'

  resources :articles
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
