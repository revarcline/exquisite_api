Rails.application.routes.draw do
  resources :entries, only: %i[show new]
  resources :corpses, only: %i[index show new]
  get 'random', to: 'corpses#random'
  get 'corpses/:id/add', to: 'corpses#add'
  get 'pages/index'
  root 'pages#index'
end
