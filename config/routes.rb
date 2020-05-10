Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#home"

  resources :events, shallow: true, only: [:show]
  resources :organizations, shallow:true, only: [:show, :index]
  resources :users, shallow: true, only: [:show]
end
