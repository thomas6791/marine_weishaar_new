class PagesController < ApplicationController
  def home
    @annonces = Annonce.all
  end

  def about
  end

  def contact
  end

  def agences
  end

  def gestion_locative
  end
end
