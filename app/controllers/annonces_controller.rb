class AnnoncesController < ApplicationController
  def index
    
  end

  def new
    @admin = Admin.find(current_admin.id)
    @annonce = Annonce.new
    @quartiers = YAML.load_file('config/datas/quartiers.yml')
  end

  def edit
    @annonce = Annonce.find(params[:id])
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.save
    if @annonce.save
      redirect_to root_path
    end
  end

  def show
  end

  def update
    @annonce = Annonce.find(params[:id])
    @annonce.update(annonce_params)
    @annonce.type_bien = annonce_params[:type_bien]
    @annonce.save
    fail
    redirect_to admin_path(current_admin)
  end

  def destroy
    @annonce = Annonce.find(params[:id])
    @annonce.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to admin_path(current_admin), status: :see_other
  end

  def annonce_params
    params.require(:annonce).permit(:titre, :city,:address,:zipcode,:latitude,:longitude,:quartier,:country,:surface,:dpe,:ges,:type_bien,:price,:ref_annonce,:nb_pieces,:nb_etage,:chauffage,:chauffage_mode,:etat_general,:annee_construction,:ascenseur,:copropriete,:cuisine_equipee,:jardin,:balcon,:terrasse,:garage ,photos:[])
  end
end
