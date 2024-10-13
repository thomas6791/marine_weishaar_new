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
    params.require(:annonce).permit(:titre, :city,:address,:zipcode,:latitude,:longitude,:quartier,:country,:type_bien,:surface,:dpe,:ges,:price,:ref_annonce,:nb_pieces,:nb_etage,:chauffage,:chauffage_mode,:etat_general,:annee_construction,:ascenseur,:copropriete,:cuisine_equipee,:jardin,:balcon,:terrasse,:garage ,photos:[])
  end
end
