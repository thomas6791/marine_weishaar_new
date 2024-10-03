class ChangePriceToAnnonces < ActiveRecord::Migration[7.0]
  def change
    remove_column :annonces, :price
    add_monetize :annonces, :price, currency: { present: false }
  end
end
