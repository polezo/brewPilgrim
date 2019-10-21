class Brewery < ApplicationRecord
    has_many :brewqueues

    def maps_address
        if self.city && self.state
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
        else 
            return false
        end
        return "https://www.google.com/maps/search/?api=1&query=#{address}"
    end


    def addy
        self.street + " " + self.zip_code
    end

end
