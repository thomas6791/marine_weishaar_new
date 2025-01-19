class AddLoyerToLocations < ActiveRecord::Migration[7.2]
  def change
    add_monetize :locations, :loyer
    add_monetize :locations, :charges
  end
end
