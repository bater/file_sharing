Rails.application.routes.draw do
  resources :items, only: [:new, :create]
  get '/:id', to: 'items#show', as: :show
  root 'items#new'
end
