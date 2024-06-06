class AdminsController < ApplicationController
  before_action :authenticate_admin!
  def index
    if current_admin.present?
      redirect_to admin_path(current_admin)
    end
  end
  def show
  end
  
end
