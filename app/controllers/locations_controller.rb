class LocationsController < ApplicationController
  def index
    @page_title = "Locations d'appartements et maisons | Marine Weishaar Immobilier"
  end
  def appartements
    @page_title = "Locations d'appartements | Marine Weishaar Immobilier"
  end

  def maisons
    @page_title = "Locations de maisons | Marine Weishaar Immobilier"
  end
end
