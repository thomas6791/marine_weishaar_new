class PagesController < ApplicationController

  def home
    @annonces = Annonce.all
  end

  def about
  end

  def contact
    #response = HTTParty.get('https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJ9xTd-HVmkUcRrccf_XqEHRk&fields=address_components,name&key=AIzaSyC74ObwjB-HWFHBjvCyZUpgduKw-uQQ7a4')
    #"https://maps.googleapis.com/maps/api/place/textsearch/json?query=salon+de+beaute+in+Strasbourg&key=AIzaSyC74ObwjB-HWFHBjvCyZUpgduKw-uQQ7a4"
    #"https://maps.googleapis.com/maps/api/place/textsearch/json?query=pharmacie+in+Strasbourg&key=AIzaSyC74ObwjB-HWFHBjvCyZUpgduKw-uQQ7a4"
    #puts response.body, response.code, response.message, response.headers.inspect

  end

  def agences
  end

  def gestion_locative
  end

end
