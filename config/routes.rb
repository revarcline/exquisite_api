Rails.application.routes.draw do
  resources :entries
  resources :corpses
  get 'pages/index'
  root 'pages#index'
end
