class CommercesController < ApplicationController
  def index
    add_breadcrumb "Commerces", commerces_path
  end
end
