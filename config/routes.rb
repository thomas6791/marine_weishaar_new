Rails.application.routes.draw do

  devise_for :admins

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"
  get 'pages/home'
  get 'pages/about'
  get '/contact', to: "pages#contact"
  post '/send', to:"pages#send_contact"
  get '/gestion-locative', to:  "pages#gestion_locative"

  get '/mentions',to: "pages#mentions"
  get '/confidentialite', to: "pages#confidentialite"
  get '/cookies',to:"pages#cookies"
  get '/plan-site',to:"pages#plan_site"

  get 'components', to: "pages#components"

  resources :admins do
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
  get "achat-immobilier", to: "achats#index", as: :annonces
  get "achat-immobilier/:id", to: "achats#show", as: :achat_show
  get "achat-appartements", to: "achats#appartements", as: :appartements
  post "rent-filter", to: "achats#rent_filter", as: :rent_filter
  get "achat-maisons", to: "achats#maisons", as: :maisons
  get "achat-terrains", to: "achats#terrains", as: :terrains
  get "achat-test", to: "achats#annonces_test"
  post "turbo_list", to: "achats#turbo_list"

  scope "achat" do
    get "/alsace", to: "achats#alsace"
    get "/bas-rhin", to: "achats#bas_rhin"
    get "/haut-rhin", to: "achats#haut_rhin"
    get "/strasbourg", to: "achats#strasbourg"
    get "/test", to: "achats#test"
    scope "strasbourg" do
      get '/:quartier', to: "achats#strasbourg_quartier", as: :strasbourg_quartier
    end
  end

  post "full_list", to: "pages#full_list"

  
end
