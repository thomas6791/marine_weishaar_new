class AddChambresToAnnonce < ActiveRecord::Migration[7.2]
  def change
    add_column :annonces, :nb_chambres,:integer
  end
end
