class AnnoncesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @annonce = Annonce.new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  def article_params
    params.require(:annonce).permit(:titre, :city, photos:[])
  end
end
