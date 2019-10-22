class Brewqueue < ApplicationRecord
    belongs_to :brewery
    belongs_to :user
end
