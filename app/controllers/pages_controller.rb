class PagesController < ApplicationController

  def home
    @annonces = Annonce.all
    @last_annonces = Annonce.last(5)
    @icones = YAML.load_file('config/datas/icones.yml')
    @page_title = "Marine Weishaar | Agent immobilier"
  end

  def about
  end

  def contact
    #response = HTTParty.get('https://maps.googleapis.com/maps/api/place/details/json?place_id=ChIJ9xTd-HVmkUcRrccf_XqEHRk&fields=address_components,name&key=AIzaSyC74ObwjB-HWFHBjvCyZUpgduKw-uQQ7a4')
    #"https://maps.googleapis.com/maps/api/place/textsearch/json?query=salon+de+beaute+in+Strasbourg&key=AIzaSyC74ObwjB-HWFHBjvCyZUpgduKw-uQQ7a4"
    #"https://maps.googleapis.com/maps/api/place/textsearch/json?query=pharmacie+in+Strasbourg&key=AIzaSyC74ObwjB-HWFHBjvCyZUpgduKw-uQQ7a4"
    #puts response.body, response.code, response.message, response.headers.inspect
    @page_title = "Contact | Marine Weishaar Immobilier"
  end

  def send_contact
    if params[:contact][:hidden_message].present?
      redirect_to request.referrer
    else
      @object = params[:contact][:person]
      @sender = params[:contact][:email]
      @person = params[:contact][:lastname] + " " +params[:contact][:firstname]
      @tel = params[:contact][:tel]
      @message = params[:contact][:message]
      ContactMailer.with(object:@object,sender:@sender,person:@person,tel:@tel,message:@message).contact_email.deliver_now
    end
  end

  def agences
  end

  def gestion_locative
  end

  def full_list
  end

  def mentions
  end
  def confidentialite
  end
  def cookies
  end
  def plan_site
  end

end
