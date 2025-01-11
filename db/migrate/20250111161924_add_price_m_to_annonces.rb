class AddPriceMToAnnonces < ActiveRecord::Migration[7.2]
  def change
    add_monetize :annonces, :price_metre
  end
end
