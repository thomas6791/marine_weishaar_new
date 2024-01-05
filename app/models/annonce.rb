class Annonce < ApplicationRecord
    enum type_bien: [ :maison, :appartement, :terrain ]
end
