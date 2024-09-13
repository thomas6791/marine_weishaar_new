Rails.application.routes.draw do

  devise_for :admins

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"
  get 'pages/home'
  get 'pages/about'
  get '/contact', to: "pages#contact"
  get '/gestion-locative', to:  "pages#gestion_locative"

  get 'components', to: "pages#components"

  resources :admins, path: "admin" do
    resources :annonces
    #collection do
      #get "annonces", to: "admins#annonces"
    #end
  end
  get 'locations', to: "locations#index"
  get 'locations/appartements', to: "locations#appartements"
  get 'locations/maisons', to: "locations#maisons"

  resources :agences do
    collection do
      get "agence-immobiliere-strasbourg", to: "agences#orangerie", as: "strasbourg"
      get "agence-immobiliere-strasbourg-neudorf", to: "agences#neudorf", as: "neudorf"
      get "agence-immobiliere-strasbourg-krutenau", to: "agences#krutenau", as: "krutenau"
      get "agence-immobiliere-strasbourg-orangerie", to: "agences#orangerie", as: "orangerie"
      get "agence-immobiliere-wissembourg", to: "agences#wissembourg", as: "wissembourg"
      get "agence-immobiliere-molsheim", to: "agences#molsheim", as: "molsheim"
      get "agence-immobiliere-colmar", to: "agences#colmar", as: "colmar"
      get "agence-immobiliere-haguenau", to: "agences#haguenau", as: "haguenau"
      get "agence-immobiliere-schiltigheim", to: "agences#schiltigheim", as: "schiltigheim"
      get "agence-immobiliere-altkirch", to: "agences#altkirch", as: "altkirch"
      get "agence-immobiliere-brumath", to: "agences#brumath", as: "brumath"
      get "agence-immobiliere-barr", to: "agences#barr", as: "barr"
      get "agence-immobiliere-erstein", to: "agences#erstein", as: "erstein"
      get "agence-immobiliere-cernay", to: "agences#cernay", as: "cernay"
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
    get "/test", to: "achats#test"
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
      get '/petite-france',to: "achats#petite_france"
      get '/neuhof',to: "achats#neuhof"
      get '/stockfeld',to: "achats#stockfeld"
      get '/ganzau',to: "achats#ganzau"
      get '/robertsau',to: "achats#robertsau"
      get '/wacken',to: "achats#wacken"
    end
  end

  
end
