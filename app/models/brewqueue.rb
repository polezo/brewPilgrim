class Brewqueue < ApplicationRecord
    belongs_to :brewery
    belongs_to :user

    def self.total
        uniq_breweries = self.all.uniq
        uniq_breweries.length

    end

    def self.most_brewqueues
        id = self.group("brewery_id").order('count(*) DESC').limit(1).pluck(:brewery_id).first
        
    end

  

end
