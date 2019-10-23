class Review < ApplicationRecord
    belongs_to :reviewer, class_name: "User", foreign_key: :reviewer_id
    belongs_to :reviewee, class_name: "Brewery", foreign_key: :reviewee_id

    def stars
        if self.rating == 1
            starz = "★"
        elsif self.rating == 2
            starz = "★★"
        elsif self.rating == 3
            starz = "★★★"
        elsif self.rating == 4
            starz = "★★★★"
        elsif self.rating == 5
            starz = "★★★★★"
        end  
        starz  
    end

    def grey_stars
        if self.rating == 4
            stary = "★"
        elsif self.rating == 3
            stary = "★★"
        elsif self.rating == 2
            stary = "★★★"
        elsif self.rating == 1
            stary = "★★★★"
        elsif self.rating == 5
            stary = ""
        end 
        stary  
    end

end
