Rails.application.routes.draw do
  get 'users/new'

  resources :recipes

  root 'pages#welcome'
end
