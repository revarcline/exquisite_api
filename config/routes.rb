Rails.application.routes.draw do
  resources :entries, only: %i[show new]
  resources :corpses, only: %i[index show random new]
  get 'pages/index'
  root 'pages#index'
end
