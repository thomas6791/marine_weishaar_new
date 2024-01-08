class Annonce < ApplicationRecord
    enum type_bien: [ :maison, :appartement, :terrain ]
    has_many_attached :photos
end
