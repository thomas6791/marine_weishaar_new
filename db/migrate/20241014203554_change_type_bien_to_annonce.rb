class ChangeTypeBienToAnnonce < ActiveRecord::Migration[7.0]
  def change
    change_column :annonces, :type_bien, :string
  end
end
