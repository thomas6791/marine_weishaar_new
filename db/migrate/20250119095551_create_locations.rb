class CreateLocations < ActiveRecord::Migration[7.2]
  def change
    create_table :locations do |t|
      t.timestamps
      t.string "titre"
      t.string "city"
      t.string "zipcode"
      t.text "description"
      t.float "latitude"
      t.float "longitude"
      t.string "address"
      t.string "quartier"
      t.float "surface"
      t.string "dpe"
      t.string "ges"
      t.string "country"
      t.string "ref_annonce"
      t.integer "nb_pieces"
      t.integer "nb_etage"
      t.string "chauffage"
      t.string "chauffage_mode"
      t.string "etat_general"
      t.datetime "annee_construction"
      t.boolean "cave", default: false
      t.boolean "ascenseur", default: false
      t.boolean "copropriete", default: false
      t.boolean "cuisine_equipee", default: false
      t.boolean "jardin", default: false
      t.boolean "balcon", default: false
      t.boolean "terrasse", default: false
      t.boolean "garage", default: false
      t.string "type_bien"
      t.boolean "colocation", default: false
    end
  end
end
