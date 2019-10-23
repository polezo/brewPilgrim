class Brewery < ApplicationRecord
    has_many :brewery_tags
    has_many :tags, through: :brewery_tags

    has_many :reviews, foreign_key: :reviewee_id
    has_many :reviewers, through: :reviews, source: :reviewer

    has_many :brewqueues
    has_many :users, through: :brewqueues

    def maps_helper
        if self.name.include?(" ") 
            name = self.name.split(" ").join("+") 
       else
            name = self.name
       end
       
       if self.city.include?(" ") 
           city = self.city.split(" ").join("+") 
       else
           city = self.city
       end
       
       if self.state.include?(" ") 
           state = self.state.split(" ").join("+") 
       else
           state = self.state
       end

       if self.street.empty?
         address = name + "+" + city + "+" + state
       else 
           street = self.street.split(" ").join("+")
           address = name + "+" + street + "+" + city + "+" + state
       end
       address
    end


    def maps_address
        if self.city && self.state
            address = self.maps_helper
        else 
            return false
        end
        return "https://www.google.com/maps/search/?api=1&query=#{address}"
    end


    def addy
        self.street + ", " + self.city + ", " + self.state + ", " + self.zip_code
    end

    def phone_number
        if !self.phone.empty?
            number = self.phone.to_s
            number.insert(3,"-")
            number.insert(7,"-")
        else
            return nil
        end
        number
    end

end
