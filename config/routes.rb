Rails.application.routes.draw do
  get 'corpses/random', to: 'corpses#random'
  get 'corpses/:id/add', to: 'corpses#add'
  resources :corpses, only: %i[index show create] do
    resources :entries, only: %i[create]
  end
  get 'pages/index'
  root 'pages#index'
end
