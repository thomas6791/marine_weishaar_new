class Annonce < ApplicationRecord
    TYPE_BIEN = ["maison","appartement","terrain","commerce","immeuble","parking"]
    DPE = ["A","B","C","D","E","F","G"]
    GES = ["A","B","C","D","E","F","G"]
    CHAUFFAGE = ["Individuel","Collectif"]
    TYPE_CHAUFFAGE = ["électrique","gaz","fioul","bois"]
    has_many_attached :photos
    geocoded_by :full_address
    after_validation :geocode, if: :will_save_change_to_address?
    monetize :price_cents

    def full_address
        [address,zipcode,city,country].compact.join(',')
    end
end
