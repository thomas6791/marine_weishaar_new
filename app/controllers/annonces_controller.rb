class AnnoncesController < ApplicationController
  def index
  end

  def show
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

  def update
  end

  def destroy
  end

  def annonce_params
    params.require(:annonce).permit(:titre, :city, photos:[])
  end
end
