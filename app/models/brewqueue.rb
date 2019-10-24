class Brewqueue < ApplicationRecord
    belongs_to :brewery
    belongs_to :user

    def self.total
        self.all.length
    end

end
