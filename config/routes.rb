Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#home"
  get "/application/search", to  'application#search'
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

  resources :messages, defaults: { format: :html}
  resources :events, defaults: { format: :html }
  resources :users, defaults: { format: :html }
  resources :organizations, defaults: { format: :html }
  resources :comments, defaults: { format: :html }
end
