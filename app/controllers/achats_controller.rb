class AchatsController < ApplicationController
  def index
    @cover = "https://as2.ftcdn.net/v2/jpg/06/59/15/57/1000_F_659155771_tZmCC9cXPhBTqhS5DQIaruhiSmj6rMBK.jpg"
    if params[:query].present?
      @address = params[:query][:address]
      coordinates = Geocoder.search(@address).first.coordinates if @address != ""
      
      if @address != ""
        @annonces = Annonce.near(coordinates, 10)
      else
        @annonces = Annonce.all
      end

      case params[:query][:action]
      when "Louer"
        redirect_to locations_path()
      when "Acheter"
        #params[:query].delete("action")
        if params[:query][:type_bien].present? && params[:query][:type_bien] != "" && params[:query][:type_bien] != "Type de bien"
          @annonces = @annonces.where(type_bien: params[:query][:type_bien].downcase)
          @type_bien = params[:query][:type_bien].downcase
        else
          @type_bien = "all"
          #@annonces = Annonce.all
        end

        params[:query].delete("action")
        #params[:query].delete("type_bien")

        if params[:query]["nb_pieces"].present? && params[:query]["nb_pieces"] != ""
          @annonces = @annonces.where("nb_pieces >= ?", params[:query]["nb_pieces"])
        end

        if params[:query][:surface].present? && params[:query][:surface] != ""
          @annonces = @annonces.where("surface >= ?", params[:query][:surface].to_f)
        end

        if params[:query]["budget_min"].present? && params[:query]["budget_min"] != ""
          #@annonces = @annonces.where(" >= ?", params[:query]["nb_pieces"])
          min_price = Money.new(params[:query]["budget_min"])*100
          #fail
          array_annonces = []
          #@annonces = @annonces.where("price.fractional >= ?",min_price.fractional)
          @annonces.each do |annonce|
            array_annonces << annonce if annonce.price >= min_price
          end
          @annonces = Annonce.where(id: array_annonces.map(&:id))
        end

        if params[:query]["budget_max"].present? && params[:query]["budget_max"] != ""
          max_price = Money.new(params[:query]["budget_max"])*100
          array_annonces = []
          @annonces.each do |annonce|
            array_annonces << annonce if annonce.price <= max_price
          end
          @annonces = Annonce.where(id: array_annonces.map(&:id))
        end

        if params[:query]["surface"].present? && params[:query]["surface"] != ""
          @annonces = @annonces.where("surface >= ?", params[:query]["surface"].to_f)
        end

        #params[:query].delete("action")
        #User.where(["name LIKE ?", "%#{params[:query]}%"]).where(:admin => [nil, false])
      else
        print('It is not a string or number')
      end

      @markers = @annonces.geocoded.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude,
          info_window_html: render_to_string(partial: "shared/info_window", locals: {flat: flat}),
          marker_html: render_to_string(partial: "shared/marker", locals: {flat: flat})
        }
      end

    else
      @annonces = Annonce.all
      @markers = @annonces.geocoded.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude,
          info_window_html: render_to_string(partial: "shared/info_window", locals: {flat: flat}),
          marker_html: render_to_string(partial: "shared/marker", locals: {flat: flat})
        }
      end
    end
    
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
    annonces = []
 
    biens = params[:annonces_filtres].keys[0..5]
    options = params[:annonces_filtres].keys[3..-1]
   
    biens.each do |type_bien|
      if params[:annonces_filtres][type_bien] == "1"
        annonces << Annonce.where(type_bien: type_bien)
      end
    end
    @annonces = annonces.flatten
    options.each do |option|
      if params[:annonces_filtres][option] != "0" && params[:annonces_filtres][option] != ""
        #fail
      end
    end
    #if params[:type_bien].present?
    #  @annonces = Annonce.where(type_bien: params[:type_bien])
    #else
    #  @annonces = Annonce.all
    #end
    
    respond_to do |format|
      #format.turbo_stream
      format.turbo_stream do
        render turbo_stream: turbo_stream.update(:annonces_list_index, partial: "achats/annonces",
          locals: { annonces: @annonces })
      end
      format.html {}
      #format.turbo_stream do
      #  render turbo_stream: turbo_stream.update("annonces_list_index", partial: "achats/annonces", locals: { annonces: @annonces })
      #end
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
