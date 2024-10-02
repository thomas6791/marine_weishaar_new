class AddPriceToAnnonces < ActiveRecord::Migration[7.0]
  def change
    add_column :annonces, :price, :float
  end
end
