Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#home"
  get "/search", to:  'users#search'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        resources :comments, shallow: true
        resources :date_events, shallow: true
      end
      resources :comments, shallow: true
      resources :messages, shallow: true
      resources :organizations, shallow: true
      resources :users, shallow: true, only: [:show] do
        resources :events
        resources :messages
      end
    end
  end

  resources :votes, defaults: { format: :html}
  resources :date_events, defaults: { format: :html}
  resources :messages, defaults: { format: :html}
  resources :user_guests, defaults: { format: :html}
  resources :comments, defaults: { format: :html }
  resources :events, defaults: { format: :html } do
    resources :user_guest, shallow: true
    resources :comments,shallow: true
  end
  resources :users, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
end
