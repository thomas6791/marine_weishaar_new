class Annonce < ApplicationRecord
    TYPE_BIEN = ["maison","appartement","terrain","commerce","immeuble","parking"]
    DPE = ["A","B","C","D","E","F","G"]
    GES = ["A","B","C","D","E","F","G"]
    CHAUFFAGE = ["Individuel","Collectif"]
    TYPE_CHAUFFAGE = ["électrique","gaz","fioul","bois"]
    has_rich_text :description
    has_many_attached :photos
    geocoded_by :full_address
    after_validation :geocode, if: :will_save_change_to_address?
    monetize :price_cents
    monetize :price_metre_cents
    after_validation :price_metre

    def full_address
        [address,zipcode,city,country].compact.join(',')
    end

    def price_metre
        self.price_metre_cents = self.price/self.surface
    end
end
