class Location < ApplicationRecord
    TYPE_BIEN = ["maison","appartement","studio"]
    DPE = ["A","B","C","D","E","F","G"]
    GES = ["A","B","C","D","E","F","G"]
    CHAUFFAGE = ["Individuel","Collectif"]
    TYPE_CHAUFFAGE = ["électrique","gaz","fioul","bois"]
    monetize :loyer_cents
    monetize :charges_cents
    has_rich_text :description
    has_many_attached :photos
    geocoded_by :full_address
    after_validation :geocode, if: :will_save_change_to_address?

    def full_address
        [address,zipcode,city,country].compact.join(',')
    end
end
