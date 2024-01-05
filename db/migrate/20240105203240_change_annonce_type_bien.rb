class ChangeAnnonceTypeBien < ActiveRecord::Migration[7.0]
  def change
    remove_column :annonces, :type_bien
    add_column :annonces, :type_bien, :integer, default: 0
    #add_column :annonces, :type_projet, :integer, default: 0
    #add_column :annonces, :status, :integer, default: 0
  end
end
