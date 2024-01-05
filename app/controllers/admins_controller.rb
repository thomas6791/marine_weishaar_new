class AdminsController < ApplicationController
  before_action :authenticate_admin!
  def index
  end
  def annonces
  end
end
