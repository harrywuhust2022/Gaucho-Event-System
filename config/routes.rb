Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # root "users#index"
  root 'events#allEvents'
  get '/login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/register', to: 'users#new', as: 'register'
  post '/test', to: 'users#test'
  resources :users do
    resources :invites do
      resources :responses
      member do
        delete :destroy_received_invite
      end
    end
    member do

      get 'received_invites', to: 'invites#received_invites'
    end
    member do
      get 'participated_events', to: 'events#participated_events'
    end
    resources :events do
      resources :comments

    end
  end
  get '*path', to: 'application#record_not_found'

end
