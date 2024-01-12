class ChangeAddresseToAnnonces < ActiveRecord::Migration[7.0]
  def change
    remove_column :annonces, :addresse, :string
    add_column :annonces, :address, :string
    add_column :annonces, :quartier, :string
    add_column :annonces, :surface, :float
    add_column :annonces, :dpe, :string
    add_column :annonces, :ges, :string
    add_column :annonces, :country, :string
  end
end
