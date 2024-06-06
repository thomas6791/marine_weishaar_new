class Annonce < ApplicationRecord
    TYPE_BIEN = ["maison","appartement","terrain"]
    has_many_attached :photos
    geocoded_by :full_address
    after_validation :geocode, if: :will_save_change_to_address?

    def full_address
        [address,zipcode,city,country].compact.join(',')
    end
end
