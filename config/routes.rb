Rails.application.routes.draw do
  get 'users/new'

  resources :recipes
  resources :users

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  root 'pages#welcome'
end
