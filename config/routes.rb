Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get 'pages/home'
  get 'pages/about'
  get '/gestion-locative', to:  "pages#gestion_locative"

  resources :agences do
    collection do
      get "agence-immobiliere-strasbourg-neudorf", to: "agences#neudorf", as: "neudorf"
      get "agence-immobiliere-strasbourg-krutenau", to: "agences#krutenau", as: "krutenau"
      get "agence-immobiliere-strasbourg-orangerie", to: "agences#orangerie", as: "orangerie"
    end
  end
  root to: "pages#home"
end
