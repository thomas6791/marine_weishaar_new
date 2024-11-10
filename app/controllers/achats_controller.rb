class AchatsController < ApplicationController
  def index
    @cover = "https://as2.ftcdn.net/v2/jpg/06/59/15/57/1000_F_659155771_tZmCC9cXPhBTqhS5DQIaruhiSmj6rMBK.jpg"
    @annonces = Annonce.all
    #if params[:query].present?
    #  action_switch = params[:query][:action]
    #end

    #if action_switch == "Acheter"
      #bien = params[:query][:type_bien].downcase
    #elsif action_switch == "Louer"
      #redirect_to locations_path()
    #elsif action_switch == "Location Professionnelle"
    #elsif action_switch == "Achat Neuf"
    #elsif action_switch == "Achat Ancien"
    #else
    #  redirect_to annonces_path
    #end

    # The `geocoded` scope filters only flats with coordinates
    @markers = @annonces.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "shared/info_window", locals: {flat: flat}),
        marker_html: render_to_string(partial: "shared/marker", locals: {flat: flat})
      }
    end
  end

  def show
    @annonce = Annonce.find(params[:id])
      @marker = [{
        lat: @annonce.latitude,
        lng: @annonce.longitude,
        info_window_html: render_to_string(partial: "shared/info_window", locals: {flat: @annonce}),
        marker_html: render_to_string(partial: "shared/marker", locals: {flat: @annonce})
      }]
    ahoy.track "annonce vue", title: @annonce.titre, annonce_id:@annonce.id
  end

  def rent_filter
    fail
    if params[:type_bien].present?
      @annonces = Annonce.where(type_bien: params[:type_bien])
    else
      @annonces = Annonce.all
    end
    respond_to do |format|
      format.turbo_stream
      #format.html { redirect_to messages_url }
    end

  end
  def maisons
  end
  def terrains
  end

  def turbo_list
  end

  def alsace
  end

  def bas_rhin
  end

  def haut_rhin
  end

  def strasbourg
    @annonces = Annonce.all
    @quartiers = YAML.load_file('config/datas/quartiers.yml')
  end

  def strasbourg_quartier
    quartier_yml = YAML.load_file('config/datas/quartiers.yml')
    urls =  quartier_yml.map { |_, v| v["url"] }
    
    @quartier_name = quartier_yml.find { |k, v| v["url"] == params[:quartier] }&.first
    
    @quartier_text = YAML.load_file('config/datas/quartiers.yml')[@quartier_name]["text"]

    @cover = YAML.load_file('config/datas/quartiers.yml')[@quartier_name]["cover"]
    
    @annonces = Annonce.all
    @autres_quartiers = YAML.load_file('config/datas/quartiers.yml')
  end

 
  
  def test
  end

  def annonces_test
  end
end
