class BreweriesController < ApplicationController
    def show
        response = RestClient.get "https://api.openbrewerydb.org/breweries/#{params[:id]}"
        @brewery = JSON.parse response
    end
end
