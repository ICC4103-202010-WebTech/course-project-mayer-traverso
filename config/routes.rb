Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#home"

  resources :events, shallow: true do
    resources :comments, shallow: true
  end
  resources :messages, shallow: true, only: :show
  resources :organizations, shallow: true, only: [:show, :index]
  resources :users, shallow: true, only: [:show] do
    resources :events
    resources :messages
  end

  resources :messages, defaults: { format: :html}
  resources :events, defaults: { format: :html }
  resources :users, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
  resources :comments, defaults: { format: :html }
end
