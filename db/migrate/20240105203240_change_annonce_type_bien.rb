class ChangeAnnonceTypeBien < ActiveRecord::Migration[7.0]
  def change
    remove_column :annonces, :type_bien
    add_column :annonces, :type_bien, :string
    add_column :annonces, :type_projet, :string
    add_column :annonces, :status, :string
  end
end
