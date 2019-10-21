class Tag < ApplicationRecord
    has_many :brewery_tags
    has_many :breweries, through: :brewery_tags
end
