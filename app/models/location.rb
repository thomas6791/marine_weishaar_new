class Location < ApplicationRecord
    monetize :loyer_cents
    monetize :charges_cents
end
