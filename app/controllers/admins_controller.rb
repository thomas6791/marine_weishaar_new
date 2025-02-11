class AdminsController < ApplicationController
  before_action :authenticate_admin!
  skip_before_action :track_ahoy_visit
  layout "admin"
  def index
    if current_admin.present?
      redirect_to admin_path(current_admin)
    end
  end
  def show
    @annonces = Annonce.all
    @vues = Ahoy::Event.where(name:"annonce vue")
  end
  
end
