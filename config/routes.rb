Rails.application.routes.draw do

  devise_for :admins

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"
  get 'pages/home'
  get 'pages/about'
  get '/contact', to: "pages#contact"
  get '/gestion-locative', to:  "pages#gestion_locative"

  resources :admins, path: "admin" do
    resources :annonces
    collection do
      #get "annonces", to: "admins#annonces"
    end
  end

  resources :agences do
    collection do
      get "agence-immobiliere-strasbourg", to: "agences#orangerie", as: "strasbourg"
      get "agence-immobiliere-strasbourg-neudorf", to: "agences#neudorf", as: "neudorf"
      get "agence-immobiliere-strasbourg-krutenau", to: "agences#krutenau", as: "krutenau"
      get "agence-immobiliere-strasbourg-orangerie", to: "agences#orangerie", as: "orangerie"
      get "agence-immobiliere-wissembourg", to: "agences#wissembourg", as: "wissembourg"
      get "agence-immobiliere-molsheim", to: "agences#molsheim", as: "molsheim"
      get "agence-immobiliere-colmar", to: "agences#colmar", as: "colmar"
    end
  end
  get "annonces-immobilieres", to: "achats#index", as: :annonces
  get "annonces-immobilieres/:id", to: "achats#show", as: :achat_show
  get "annonces-appartements", to: "achats#appartements", as: :appartements
  get "annonces-maisons", to: "achats#maisons", as: :maisons
  get "annonces-terrains", to: "achats#terrains", as: :terrains

  scope "achat" do
    get "/alsace", to: "achats#alsace"
    get "/bas-rhin", to: "achats#bas_rhin"
    get "/haut-rhin", to: "achats#haut_rhin"
    get "/strasbourg", to: "achats#strasbourg"
    scope "strasbourg" do
      get '/bourse',to: "achats#bourse"
      get '/esplanade',to: "achats#esplanade"
      get '/krutenau',to: "achats#krutenau"
      get '/centre-ville',to: "achats#centre_ville"
      get '/gare',to: "achats#gare"
      get '/tribunal',to: "achats#tribunal"
      get '/orangerie',to: "achats#orangerie"
      get '/conseil_des_xv',to: "achats#conseil_des_xv"
      get '/cronenbourg',to: "achats#cronenbourg"
      get '/hautepierre',to: "achats#hautepierre"
      get '/poteries',to: "achats#poteries"
      get '/koenigshoffen',to: "achats#koenigshoffen"
      get '/montagne-verte',to: "achats#montagne_verte"
      get '/elsau',to: "achats#elsau"
      get '/meinau',to: "achats#meinau"
      get '/neudorf',to: "achats#neudorf"
      get '/musau',to: "achats#musau"
      get '/port-rhin',to: "achats#port_rhin"
      get '/neuhof',to: "achats#neuhof"
      get '/stockfeld',to: "achats#stockfeld"
      get '/ganzau',to: "achats#ganzau"
      get '/robertsau',to: "achats#robertsau"
      get '/wacken',to: "achats#wacken"
    end
  end

  
end
