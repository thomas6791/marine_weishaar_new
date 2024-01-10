class AchatsController < ApplicationController
  def index
    @annonces = Annonce.all
  end

  def show
    @annonce = Annonce.find(params[:id])
    fail
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
  end

  def krutenau
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
  end

  def musau
  end

  def port_rhin
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
