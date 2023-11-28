Rails.application.routes.draw do
  root "welcome#index"
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  
  get "sign_in", to: "session#new"
  post "sign_in", to: "session#create"

  delete "logout", to: "session#destroy"

  get "about", to: "about#index"
  
  get "main", to: "main#index"

end
