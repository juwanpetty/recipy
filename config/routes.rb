Rails.application.routes.draw do
  resources :recipes

  root 'pages#welcome'
end
