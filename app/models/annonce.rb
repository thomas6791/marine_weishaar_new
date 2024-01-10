class Annonce < ApplicationRecord
    enum type_bien: [ :maison, :appartement, :terrain ]
    has_many_attached :photos
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?

    def full_address
    end
end
