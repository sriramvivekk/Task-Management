Rails.application.routes.draw do
  root "projects#index"
  resources :projects do
    resources :tasks
  end
  get 'sessions/new'

  get "signup", to: 'users#new', as: 'signup'
  get "login", to: 'sessions#new', as: 'login'
  delete "logout", to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
