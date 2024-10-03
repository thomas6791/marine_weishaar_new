class AnnoncesController < ApplicationController
  def index
    
  end

  def new
    @admin = Admin.find(current_admin.id)
    @annonce = Annonce.new
  end

  def edit
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.save
    if @annonce.save
      redirect_to root_path
    end
  end

  def show
    fail
  end

  def update
  end

  def destroy
  end

  def annonce_params
    params.require(:annonce).permit(:titre, :city,:address,:zipcode,:latitude,:longitude,:quartier,:country,:type_bien,:surface,:dpe,:ges,:price, photos:[])
  end
end
