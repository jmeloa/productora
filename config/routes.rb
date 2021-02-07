Rails.application.routes.draw do
  resources :crews
  resources :concerts
  resources :bands
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'bands#index'
end
