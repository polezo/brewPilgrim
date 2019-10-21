class SearchesController < ApplicationController

    def home
        if !params.empty?
            search_term = params[:search]
            response = RestClient.get "https://api.openbrewerydb.org/breweries?by_city=#{search_term}"
        
            json = JSON.parse response
        
            if !json.length.zero?
                @breweries = json.select { 
                    |brewery| brewery if brewery['brewery_type'] != 'planning'
                }
            else
                render :home
            end
        end
    end
end