Rails.application.routes.draw do
  get 'users/new'

  resources :recipes
  resources :users

  root 'pages#welcome'
end
