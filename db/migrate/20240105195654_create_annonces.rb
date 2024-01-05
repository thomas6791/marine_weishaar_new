class CreateAnnonces < ActiveRecord::Migration[7.0]
  def change
    create_table :annonces do |t|
      t.string :titre
      t.string :city
      t.string :zipcode
      t.string :addresse
      t.text :description
      t.string :type_bien

      t.timestamps
    end
  end
end
