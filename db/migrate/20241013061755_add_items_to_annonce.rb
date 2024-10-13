class AddItemsToAnnonce < ActiveRecord::Migration[7.0]
  def change
    add_column :annonces, :ref_annonce,:string
    add_column :annonces, :nb_pieces,:integer
    add_column :annonces, :nb_etage,:integer
    add_column :annonces, :chauffage,:string
    add_column :annonces, :chauffage_mode,:string
    add_column :annonces, :etat_general,:string
    add_column :annonces, :annee_construction, :datetime
    add_column :annonces, :cave, :boolean, default: false
    add_column :annonces, :ascenseur, :boolean, default: false
    add_column :annonces, :copropriete, :boolean, default: false
    add_column :annonces, :cuisine_equipee, :boolean, default: false
    add_column :annonces, :jardin, :boolean, default: false
    add_column :annonces, :balcon, :boolean, default: false
    add_column :annonces, :terrasse, :boolean, default: false
    add_column :annonces, :garage, :boolean, default: false
  end
end
