class AchatsController < ApplicationController
  def index
    @cover = "https://as2.ftcdn.net/v2/jpg/06/59/15/57/1000_F_659155771_tZmCC9cXPhBTqhS5DQIaruhiSmj6rMBK.jpg"
    @annonces = Annonce.all
    if params[:query].present?
      action_switch = params[:query][:action]
    end

    if action_switch == "Acheter"
      #bien = params[:query][:type_bien].downcase
    elsif action_switch == "Louer"
      redirect_to locations_path()
    elsif action_switch == "Location Professionnelle"
    elsif action_switch == "Achat Neuf"
    elsif action_switch == "Achat Ancien"
    else
      redirect_to annonces_path
    end

    # The `geocoded` scope filters only flats with coordinates
    @markers = @annonces.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {flat: flat}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @annonce = Annonce.find(params[:id])
  end

  def appartements
  end
  def maisons
  end
  def terrains
  end

  def alsace
  end

  def bas_rhin
  end

  def haut_rhin
  end

  def strasbourg
  end

  def bourse
  end

  def esplanade
    @cover = "https://as2.ftcdn.net/v2/jpg/00/84/97/39/1000_F_84973930_D32qRKKtikoNtjODkRbksAWd1SWQY7Wb.jpg"
  end

  def krutenau
    @cover = "https://as2.ftcdn.net/v2/jpg/00/04/82/59/1000_F_4825925_lCoYYhc5vgqepg3xVZPaGchAC6jHX0k8.jpg"
  end

  def centre_ville
  end

  def gare
  end

  def tribunal
  end

  def orangerie
  end

  def conseil_des_xv
  end

  def cronenbourg
  end

  def hautepierre
  end

  def poteries
  end

  def koenigshoffen
    @annonces = Annonce.all
  end

  def montagne_verte
  end

  def elsau
  end

  def meinau
  end

  def neudorf
    @cover = "https://as2.ftcdn.net/v2/jpg/04/70/29/27/1000_F_470292724_8yBwI8tgTnku1ISwbxXJQmmj4PX0mHJu.jpg"
  end

  def musau
  end

  def port_rhin
  end

  def petite_france
    @annonces = Annonce.all
    @autres_quartiers = YAML.load_file('config/locales/quartiers.yml')
  end

  def neuhof
  end

  def stockfeld
  end

  def ganzau
  end

  def robertsau
  end

  def wacken
  end
end
