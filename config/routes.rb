Rails.application.routes.draw do
  resources :items, only: [:new, :create, :show]
  root 'items#new'
end
